#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ voidFuncPtrArg ;
typedef  scalar_t__ voidFuncPtr ;
typedef  size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int functional; void* arg; scalar_t__ fn; } ;
struct TYPE_4__ {int int_ena; int int_type; } ;

/* Variables and functions */
 scalar_t__ ESP_INTR_FLAG_IRAM ; 
 int /*<<< orphan*/  ETS_GPIO_INTR_SOURCE ; 
 TYPE_3__ GPIO ; 
 int /*<<< orphan*/  __onPinInterrupt ; 
 TYPE_2__* __pinInterruptHandlers ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_intr_handle ; 

extern void FUNC5(uint8_t pin, voidFuncPtrArg userFunc, void * arg, int intr_type, bool functional)
{
    static bool interrupt_initialized = false;

    if(!interrupt_initialized) {
        interrupt_initialized = true;
        FUNC1(ETS_GPIO_INTR_SOURCE, (int)ESP_INTR_FLAG_IRAM, __onPinInterrupt, NULL, &gpio_intr_handle);
    }

    // if new attach without detach remove old info
    if (__pinInterruptHandlers[pin].functional && __pinInterruptHandlers[pin].arg)
    {
    	FUNC0(__pinInterruptHandlers[pin].arg);
    }
    __pinInterruptHandlers[pin].fn = (voidFuncPtr)userFunc;
    __pinInterruptHandlers[pin].arg = arg;
    __pinInterruptHandlers[pin].functional = functional;

    FUNC2(gpio_intr_handle);
    if(FUNC4(gpio_intr_handle)) { //APP_CPU
        GPIO.pin[pin].int_ena = 1;
    } else { //PRO_CPU
        GPIO.pin[pin].int_ena = 4;
    }
    GPIO.pin[pin].int_type = intr_type;
    FUNC3(gpio_intr_handle);
}