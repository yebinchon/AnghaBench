
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ LEDC_HS_SIG_OUT0_IDX ;
 scalar_t__ LEDC_LS_SIG_OUT0_IDX ;
 int OUTPUT ;
 int pinMatrixOutAttach (int,scalar_t__,int,int) ;
 int pinMode (int,int ) ;

void ledcAttachPin(uint8_t pin, uint8_t chan)
{
    if(chan > 15) {
        return;
    }
    pinMode(pin, OUTPUT);
    pinMatrixOutAttach(pin, ((chan/8)?LEDC_LS_SIG_OUT0_IDX:LEDC_HS_SIG_OUT0_IDX) + (chan%8), 0, 0);
}
