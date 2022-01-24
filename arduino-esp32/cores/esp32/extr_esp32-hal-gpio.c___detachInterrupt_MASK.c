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
typedef  size_t uint8_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int functional; int /*<<< orphan*/ * arg; int /*<<< orphan*/ * fn; } ;
struct TYPE_4__ {scalar_t__ int_type; scalar_t__ int_ena; } ;

/* Variables and functions */
 TYPE_3__ GPIO ; 
 TYPE_2__* __pinInterruptHandlers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_intr_handle ; 

extern void FUNC3(uint8_t pin)
{
    FUNC1(gpio_intr_handle);
    if (__pinInterruptHandlers[pin].functional && __pinInterruptHandlers[pin].arg)
    {
    	FUNC0(__pinInterruptHandlers[pin].arg);
    }
    __pinInterruptHandlers[pin].fn = NULL;
    __pinInterruptHandlers[pin].arg = NULL;
    __pinInterruptHandlers[pin].functional = false;

    GPIO.pin[pin].int_ena = 0;
    GPIO.pin[pin].int_type = 0;
    FUNC2(gpio_intr_handle);
}