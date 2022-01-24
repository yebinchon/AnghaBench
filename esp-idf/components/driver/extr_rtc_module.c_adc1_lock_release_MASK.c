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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ adc1_i2s_lock ; 

esp_err_t FUNC2(void)
{
    FUNC0((uint32_t*)adc1_i2s_lock != NULL, "adc1 lock release called before acquire", ESP_ERR_INVALID_STATE );
    // for now the WiFi would use ADC2 and set xpd_sar force on.
    // so we can not reset xpd_sar to fsm mode directly.
    // We should handle this after the synchronization mechanism is established.

    FUNC1( &adc1_i2s_lock );
    return ESP_OK;
}