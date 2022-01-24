#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pin_bit_mask; int /*<<< orphan*/  mode; int /*<<< orphan*/  intr_type; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INTR_DISABLE ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/  GPIO_NUM_12 ; 
 int /*<<< orphan*/  GPIO_SEL_12 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
    FUNC2("intializing test signal...\n");
    gpio_config_t gp;
    gp.intr_type = GPIO_INTR_DISABLE;
    gp.mode = GPIO_MODE_OUTPUT;
    gp.pin_bit_mask = GPIO_SEL_12;
    FUNC0(&gp);
    while (1) {
        //here the period of test signal is 20ms
        FUNC1(GPIO_NUM_12, 1); //Set high
        FUNC3(10);             //delay of 10ms
        FUNC1(GPIO_NUM_12, 0); //Set low
        FUNC3(10);         //delay of 10ms
    }
}