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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int adc_unit_t ;
struct TYPE_3__ {int sar1_patt_len; int sar2_patt_len; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ADC_PATT_LEN_MAX ; 
 int ADC_UNIT_1 ; 
 int ADC_UNIT_2 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ SYSCON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

__attribute__((used)) static esp_err_t FUNC4(adc_unit_t adc_unit, int patt_len)
{
    FUNC0(adc_unit);
    FUNC1((patt_len < ADC_PATT_LEN_MAX) && (patt_len > 0), "ADC pattern length error", ESP_ERR_INVALID_ARG);
    FUNC2(&rtc_spinlock);
    if(adc_unit & ADC_UNIT_1) {
        SYSCON.saradc_ctrl.sar1_patt_len = patt_len - 1;
    }
    if(adc_unit & ADC_UNIT_2) {
        SYSCON.saradc_ctrl.sar2_patt_len = patt_len - 1;
    }
    FUNC3(&rtc_spinlock);
    return ESP_OK;
}