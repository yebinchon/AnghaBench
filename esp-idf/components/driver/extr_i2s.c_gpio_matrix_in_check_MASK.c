#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_DEF_INPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static void FUNC3(uint32_t gpio, uint32_t signal_idx, bool inv)
{
    if (gpio != -1) {
        FUNC0(GPIO_PIN_MUX_REG[gpio], PIN_FUNC_GPIO);
        //Set direction, for some GPIOs, the input function are not enabled as default.
        FUNC2(gpio, GPIO_MODE_DEF_INPUT);
        FUNC1(gpio, signal_idx, inv);
    }
}