
//TECNOLOGICO DE MONTERREY - MEXICO
//PROYECTO: Velocimetro de un automovil digital- COURSERA
//AUTOR: Victor D. Garcia P.

//DESCRIPCION: Esta aplicacion contiene:
//Una enumeracion de Velocidades que contiene cuatro velocidades y sus respectivos valores
//Una clase Auto, que a su vez contiene una instancia de la enumeracion Velocidades y un Inicializador ademas una funcion para el cambio de velocidad
//Finalmente una prueba de la clase Auto con un ciclo (for) que realiza 20 iteraciones

import UIKit

//Enumeracion de Velocidades que contienen las cuatro velocidades y sus respectivos valores
enum Velocidades : Int {
    case Apagado=0,VelocidadBaja=20,VelocidadMedia=50,VelocidadAlta=120
    
    //Iniciliza la enumeracion de velocimetro
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
    
}


//Se define la clase Auto, que permite el cambio de velocidad (Segun los valores de la enumeracion Velocidades)

class Auto {
    var velocidad : Velocidades
    
    // Inicializador de la clase
    //Inicializa el Auto en velocidad Apagado.
    init()
    {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    //Funcion para cambio de velocidad, que retorna una tupla (Valor asociado a la velocidad, Descripcion de la velocidad) con los valores ACTUALES
    //Cambia la velocidad actual del carro de la siguiente manera:
    //Si la velocidad actual es Apagado a Velocidad Baja
    //Si la velocidad actual es VelocidadBaja a Velocidad Media
    //Si la velocidad actual es VelocidadMedia a VelocidadAlta
    //Finalmente si la velocidad actual es VelocidadAlta a VelocidadMedia
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String)
    {
        //Se asigna el valor entero que tiene asociado la velocidad actual
        
        let velocidadActual = self.velocidad.rawValue
        var velocidadActualString : String?
        
        
        //Se obtiene el valor de la cadena a la que corresponde cada velocidad
        //Y  se cambia la velocidad como se indica en el requerimiento de la tarea
        switch self.velocidad {
        case .Apagado:
            velocidadActualString="Apagado"
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadActualString="Velocidad baja"
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadActualString="Velocidad media"
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadActualString="Velocidad alta"
            self.velocidad = .VelocidadMedia
        }
        
        //Se retorna la tupla
        return (velocidadActual,velocidadActualString!)
    }
    
}

//*************************TEST***********************************

//Instancia de la clase Auto
var autico = Auto()

//20 iteraciones
for index in 1...20
{
    var temp = autico.cambioDeVelocidad()
    print("\(index). \(temp.actual),\(temp.velocidadEnCadena)")
}


