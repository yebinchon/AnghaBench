
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pin; int GPIOx; } ;


 int ADDRPIN_NUM ;
 int ADDRPIN_POWER_AHB ;
 scalar_t__ Bit_SET ;
 int CONFIG_pins (TYPE_1__*,int) ;
 int ENABLE ;
 scalar_t__ GPIO_ReadInputDataBit (int ,int ) ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 TYPE_1__* pins_addrPD ;
 TYPE_1__* pins_addrPU ;
 int usleep (int) ;

uint32_t CONFIG_get_addr(void) {
    uint32_t low = 0, high = 0;
    int i;
    RCC_AHBPeriphClockCmd(ADDRPIN_POWER_AHB, ENABLE);

    CONFIG_pins(pins_addrPD, ADDRPIN_NUM);
    usleep(5000);
    for(i = ADDRPIN_NUM-1; i >= 0; i--) {
        if( GPIO_ReadInputDataBit(pins_addrPD[i].GPIOx, pins_addrPD[i].pin) == Bit_SET)
            low = (low << 1) | 1;
        else
            low = (low << 1);
    }
    CONFIG_pins(pins_addrPU, ADDRPIN_NUM);
    usleep(5000);
    for(i = ADDRPIN_NUM-1; i >= 0; i--) {
        if( GPIO_ReadInputDataBit(pins_addrPU[i].GPIOx, pins_addrPU[i].pin) == Bit_SET)
            high = (high << 1) | 1;
        else
            high = (high << 1);
    }
    if(low == high)
        return high;
    else
        return 4;
}
