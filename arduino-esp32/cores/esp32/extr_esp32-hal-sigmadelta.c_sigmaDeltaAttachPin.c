
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ GPIO_SD0_OUT_IDX ;
 int OUTPUT ;
 int pinMatrixOutAttach (int,scalar_t__,int,int) ;
 int pinMode (int,int ) ;

void sigmaDeltaAttachPin(uint8_t pin, uint8_t channel)
{
    if(channel > 7) {
        return;
    }
    pinMode(pin, OUTPUT);
    pinMatrixOutAttach(pin, GPIO_SD0_OUT_IDX + channel, 0, 0);
}
