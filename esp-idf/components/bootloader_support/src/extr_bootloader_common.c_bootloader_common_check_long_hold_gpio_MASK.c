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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  esp_comm_gpio_hold_t ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  GPIO_LONG_HOLD ; 
 int /*<<< orphan*/  GPIO_NOT_HOLD ; 
 scalar_t__* GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  GPIO_SHORT_HOLD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

esp_comm_gpio_hold_t FUNC5(uint32_t num_pin, uint32_t delay_sec)
{
    FUNC4(num_pin);
    if (GPIO_PIN_MUX_REG[num_pin]) {
        FUNC1(GPIO_PIN_MUX_REG[num_pin]);
    }
    FUNC3(num_pin);
    uint32_t tm_start = FUNC2();
    if (FUNC0(num_pin) == 1) {
        return GPIO_NOT_HOLD;
    }
    do {
        if (FUNC0(num_pin) != 0) {
            return GPIO_SHORT_HOLD;
        }
    } while (delay_sec > ((FUNC2() - tm_start) / 1000L));
    return GPIO_LONG_HOLD;
}