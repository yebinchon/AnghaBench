
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pin; TYPE_1__* GPIOx; } ;
struct TYPE_3__ {int BRR; int BSRR; } ;


 size_t TLC59401_PIN_BLANK0 ;
 size_t TLC59401_PIN_BLANK1 ;
 size_t TLC59401_PIN_XLAT0 ;
 size_t TLC59401_PIN_XLAT1 ;
 scalar_t__ enableBlank ;
 scalar_t__ isIdle () ;
 int needLatch0 ;
 int needLatch1 ;
 TYPE_2__* pins_tlc59401 ;

void TLC59401_Update(void) {
    bool doLatch0 = 0;
    bool doLatch1 = 0;
    static int callCount = 0;

    if( isIdle() ) {
        doLatch0 = needLatch0;
        doLatch1 = needLatch1;
    }

    if((callCount++ & 1) == 0) {
        if(enableBlank) {
            pins_tlc59401[TLC59401_PIN_BLANK0].GPIOx->BSRR = pins_tlc59401[TLC59401_PIN_BLANK0].pin;
        }

        if(doLatch0) {
            pins_tlc59401[TLC59401_PIN_XLAT0].GPIOx->BSRR = pins_tlc59401[TLC59401_PIN_XLAT0].pin;

        }

        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        if(doLatch0) {
            pins_tlc59401[TLC59401_PIN_XLAT0].GPIOx->BRR = pins_tlc59401[TLC59401_PIN_XLAT0].pin;

            needLatch0 = 0;
        }
        if(enableBlank) {
            pins_tlc59401[TLC59401_PIN_BLANK0].GPIOx->BRR = pins_tlc59401[TLC59401_PIN_BLANK0].pin;
        }

    } else {
        if(enableBlank) {
            pins_tlc59401[TLC59401_PIN_BLANK1].GPIOx->BSRR = pins_tlc59401[TLC59401_PIN_BLANK1].pin;
        }
        if(doLatch1) {
            pins_tlc59401[TLC59401_PIN_XLAT1].GPIOx->BSRR = pins_tlc59401[TLC59401_PIN_XLAT1].pin;
        }

        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        if(doLatch1) {
            pins_tlc59401[TLC59401_PIN_XLAT1].GPIOx->BRR = pins_tlc59401[TLC59401_PIN_XLAT1].pin;
            needLatch1 = 0;
        }
        if(enableBlank) {
            pins_tlc59401[TLC59401_PIN_BLANK1].GPIOx->BRR = pins_tlc59401[TLC59401_PIN_BLANK1].pin;
        }
    }

}
