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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int GPIO_NUM_NC ; 
 scalar_t__* GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int const) ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(int pin)
{
    const int sdmmc_func = 3;
    const int drive_strength = 3;
    FUNC3(pin!=GPIO_NUM_NC);
    FUNC4(pin);

    uint32_t reg = GPIO_PIN_MUX_REG[pin];
    FUNC3(reg != UINT32_MAX);
    FUNC1(reg);
    FUNC0(reg, sdmmc_func);
    FUNC2(reg, drive_strength);
}