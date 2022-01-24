#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int adc_unit_t ;
typedef  int adc_channel_t ;
typedef  int adc_bits_width_t ;
typedef  int adc_atten_t ;
typedef  scalar_t__ adc1_channel_t ;
struct TYPE_2__ {int* saradc_sar1_patt_tab; int* saradc_sar2_patt_tab; } ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 int ADC_ATTEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ADC_UNIT_1 ; 
 int ADC_UNIT_2 ; 
 int ADC_WIDTH_MAX ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ SYSCON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

__attribute__((used)) static esp_err_t FUNC4(adc_unit_t adc_unit, int seq_num, adc_channel_t channel, adc_bits_width_t bits, adc_atten_t atten)
{
    FUNC0(adc_unit);
    if (adc_unit & ADC_UNIT_1) {
        FUNC1((adc1_channel_t) channel < ADC1_CHANNEL_MAX, "ADC1 channel error", ESP_ERR_INVALID_ARG);
    }
    FUNC1(bits < ADC_WIDTH_MAX, "ADC bit width error", ESP_ERR_INVALID_ARG);
    FUNC1(atten < ADC_ATTEN_MAX, "ADC Atten Err", ESP_ERR_INVALID_ARG);

    FUNC2(&rtc_spinlock);
    //Configure pattern table, each 8 bit defines one channel
    //[7:4]-channel [3:2]-bit width [1:0]- attenuation
    //BIT WIDTH: 3: 12BIT  2: 11BIT  1: 10BIT  0: 9BIT
    //ATTEN: 3: ATTEN = 11dB 2: 6dB 1: 2.5dB 0: 0dB
    uint8_t val = (channel << 4) | (bits << 2) | (atten << 0);
    if (adc_unit & ADC_UNIT_1) {
        SYSCON.saradc_sar1_patt_tab[seq_num / 4] &= (~(0xff << ((3 - (seq_num % 4)) * 8)));
        SYSCON.saradc_sar1_patt_tab[seq_num / 4] |= (val << ((3 - (seq_num % 4)) * 8));
    }
    if (adc_unit & ADC_UNIT_2) {
        SYSCON.saradc_sar2_patt_tab[seq_num / 4] &= (~(0xff << ((3 - (seq_num % 4)) * 8)));
        SYSCON.saradc_sar2_patt_tab[seq_num / 4] |= (val << ((3 - (seq_num % 4)) * 8));
    }
    FUNC3(&rtc_spinlock);
    return ESP_OK;
}