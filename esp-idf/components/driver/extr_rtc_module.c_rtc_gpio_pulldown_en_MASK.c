#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {scalar_t__ pulldown; int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {int rde; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* rtc_gpio_desc ; 
 TYPE_1__** rtc_gpio_reg ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC3(gpio_num_t gpio_num)
{
#if CONFIG_IDF_TARGET_ESP32
    //this is a digital pad
    if (rtc_gpio_desc[gpio_num].pulldown == 0) {
        return ESP_ERR_INVALID_ARG;
    }

    //this is a rtc pad
    portENTER_CRITICAL(&rtc_spinlock);
    SET_PERI_REG_MASK(rtc_gpio_desc[gpio_num].reg, rtc_gpio_desc[gpio_num].pulldown);
    portEXIT_CRITICAL(&rtc_spinlock);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    portENTER_CRITICAL(&rtc_spinlock);
    rtc_gpio_reg[gpio_num]->rde = 0x1;
    portEXIT_CRITICAL(&rtc_spinlock);
#endif
    return ESP_OK;
}