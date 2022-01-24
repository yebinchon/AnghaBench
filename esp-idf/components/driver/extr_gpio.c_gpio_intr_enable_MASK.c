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
typedef  int /*<<< orphan*/  gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ GPIO_ISR_CORE_ID_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  gpio_spinlock ; 
 scalar_t__ isr_core_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 

esp_err_t FUNC6(gpio_num_t gpio_num)
{
    FUNC0(FUNC1(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC3(&gpio_spinlock);
    if(isr_core_id == GPIO_ISR_CORE_ID_UNINIT) {
        isr_core_id = FUNC5();
    }
    FUNC4(&gpio_spinlock);
    return FUNC2 (gpio_num, isr_core_id);
}