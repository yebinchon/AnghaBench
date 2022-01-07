
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int pin; int GPIOx; } ;


 int Delay (int) ;
 int GPIO_ResetBits (int ,int ) ;
 int GPIO_SetBits (int ,int ) ;
 int Start_DMA_Transfer (int ,int *,int) ;
 int TLC59401_CHANNELS ;
 size_t TLC59401_PIN_MODE ;
 int TLC59401_SPI ;
 int TM_SPI_WriteMulti (int ,int) ;
 int dotCorrections ;
 int enableBlank ;
 int isIdle (int ) ;
 scalar_t__ needLatch0 ;
 scalar_t__ needLatch1 ;
 TYPE_1__* pins_tlc59401 ;

void TLC59401_SendDotCorrection(void) {
    while(!isIdle(TLC59401_SPI) || needLatch0 || needLatch1);


    enableBlank = 0;
    Delay(4);

    GPIO_SetBits(pins_tlc59401[TLC59401_PIN_MODE].GPIOx, pins_tlc59401[TLC59401_PIN_MODE].pin);
    Delay(2);

     TM_SPI_WriteMulti(dotCorrections, TLC59401_CHANNELS*3/4);





    while(needLatch0 || needLatch1);

    GPIO_ResetBits(pins_tlc59401[TLC59401_PIN_MODE].GPIOx, pins_tlc59401[TLC59401_PIN_MODE].pin);

    enableBlank = 1;
}
