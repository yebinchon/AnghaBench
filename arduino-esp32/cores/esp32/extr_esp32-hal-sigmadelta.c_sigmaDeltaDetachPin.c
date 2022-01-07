
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int pinMatrixOutDetach (int ,int,int) ;

void sigmaDeltaDetachPin(uint8_t pin)
{
    pinMatrixOutDetach(pin, 0, 0);
}
