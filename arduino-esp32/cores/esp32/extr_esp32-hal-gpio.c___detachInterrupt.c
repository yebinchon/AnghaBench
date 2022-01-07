
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int functional; int * arg; int * fn; } ;
struct TYPE_4__ {scalar_t__ int_type; scalar_t__ int_ena; } ;


 TYPE_3__ GPIO ;
 TYPE_2__* __pinInterruptHandlers ;
 int cleanupFunctional (int *) ;
 int esp_intr_disable (int ) ;
 int esp_intr_enable (int ) ;
 int gpio_intr_handle ;

extern void __detachInterrupt(uint8_t pin)
{
    esp_intr_disable(gpio_intr_handle);
    if (__pinInterruptHandlers[pin].functional && __pinInterruptHandlers[pin].arg)
    {
     cleanupFunctional(__pinInterruptHandlers[pin].arg);
    }
    __pinInterruptHandlers[pin].fn = ((void*)0);
    __pinInterruptHandlers[pin].arg = ((void*)0);
    __pinInterruptHandlers[pin].functional = 0;

    GPIO.pin[pin].int_ena = 0;
    GPIO.pin[pin].int_type = 0;
    esp_intr_enable(gpio_intr_handle);
}
