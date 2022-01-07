
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ voidFuncPtrArg ;
typedef scalar_t__ voidFuncPtr ;
typedef size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int functional; void* arg; scalar_t__ fn; } ;
struct TYPE_4__ {int int_ena; int int_type; } ;


 scalar_t__ ESP_INTR_FLAG_IRAM ;
 int ETS_GPIO_INTR_SOURCE ;
 TYPE_3__ GPIO ;
 int __onPinInterrupt ;
 TYPE_2__* __pinInterruptHandlers ;
 int cleanupFunctional (void*) ;
 int esp_intr_alloc (int ,int,int ,int *,int *) ;
 int esp_intr_disable (int ) ;
 int esp_intr_enable (int ) ;
 scalar_t__ esp_intr_get_cpu (int ) ;
 int gpio_intr_handle ;

extern void __attachInterruptFunctionalArg(uint8_t pin, voidFuncPtrArg userFunc, void * arg, int intr_type, bool functional)
{
    static bool interrupt_initialized = 0;

    if(!interrupt_initialized) {
        interrupt_initialized = 1;
        esp_intr_alloc(ETS_GPIO_INTR_SOURCE, (int)ESP_INTR_FLAG_IRAM, __onPinInterrupt, ((void*)0), &gpio_intr_handle);
    }


    if (__pinInterruptHandlers[pin].functional && __pinInterruptHandlers[pin].arg)
    {
     cleanupFunctional(__pinInterruptHandlers[pin].arg);
    }
    __pinInterruptHandlers[pin].fn = (voidFuncPtr)userFunc;
    __pinInterruptHandlers[pin].arg = arg;
    __pinInterruptHandlers[pin].functional = functional;

    esp_intr_disable(gpio_intr_handle);
    if(esp_intr_get_cpu(gpio_intr_handle)) {
        GPIO.pin[pin].int_ena = 1;
    } else {
        GPIO.pin[pin].int_ena = 4;
    }
    GPIO.pin[pin].int_type = intr_type;
    esp_intr_enable(gpio_intr_handle);
}
