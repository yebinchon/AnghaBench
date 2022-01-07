
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LED_CALC (int ,int ) ;
 int TLC59401_SetValue (int ,int ) ;

void TLC59401_Set8bitCalValue(uint8_t index, uint8_t value) {
    TLC59401_SetValue(index, LED_CALC(index, value) );
}
