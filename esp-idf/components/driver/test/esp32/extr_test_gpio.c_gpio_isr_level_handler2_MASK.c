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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_OUTPUT_IO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  level_intr_times ; 

__attribute__((used)) static void FUNC3(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    level_intr_times++;
    FUNC0("GPIO[%d] intr, val: %d\n", gpio_num, FUNC1(gpio_num));
    if(FUNC1(gpio_num)) {
        FUNC2(GPIO_OUTPUT_IO, 0);
    }else{
        FUNC2(GPIO_OUTPUT_IO, 1);
    }
    FUNC0("GPIO[%d] intr, val: %d, level_intr_times = %d\n", GPIO_OUTPUT_IO, FUNC1(GPIO_OUTPUT_IO), level_intr_times);
    FUNC0("GPIO[%d] intr, val: %d, level_intr_times = %d\n", gpio_num, FUNC1(gpio_num), level_intr_times);
}