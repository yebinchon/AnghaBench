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
typedef  scalar_t__ gpio_num_t ;
struct TYPE_3__ {int pull_up_en; int pull_down_en; int /*<<< orphan*/  intr_type; int /*<<< orphan*/  mode; int /*<<< orphan*/  pin_bit_mask; } ;
typedef  TYPE_1__ gpio_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  GPIO_INTR_DISABLE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GPIO_MODE_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

esp_err_t FUNC4(gpio_num_t gpio_num)
{
    FUNC2(gpio_num >= 0 && FUNC1(gpio_num));
    gpio_config_t cfg = {
        .pin_bit_mask = FUNC0(gpio_num),
        .mode = GPIO_MODE_DISABLE,
        //for powersave reasons, the GPIO should not be floating, select pullup
        .pull_up_en = true,
        .pull_down_en = false,
        .intr_type = GPIO_INTR_DISABLE,
    };
    FUNC3(&cfg);
    return ESP_OK;
}