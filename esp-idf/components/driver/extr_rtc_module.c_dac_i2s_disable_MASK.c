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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int SENS_DAC_CLK_INV_M ; 
 int SENS_DAC_DIG_FORCE_M ; 
 int /*<<< orphan*/  SENS_SAR_DAC_CTRL1_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC3(void)
{
    FUNC1(&rtc_spinlock);
    FUNC0(SENS_SAR_DAC_CTRL1_REG, SENS_DAC_DIG_FORCE_M | SENS_DAC_CLK_INV_M);
    FUNC2(&rtc_spinlock);
    return ESP_OK;
}