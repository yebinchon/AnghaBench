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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  adc_bits_width_t ;
typedef  scalar_t__ adc2_channel_t ;

/* Variables and functions */
 scalar_t__ ADC2_CHANNEL_MAX ; 
 int /*<<< orphan*/  ADC_CTRL_RTC ; 
 int /*<<< orphan*/  ADC_UNIT_2 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  adc2_spinlock ; 
 int /*<<< orphan*/  adc2_wifi_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC10(adc2_channel_t channel, adc_bits_width_t width_bit, int* raw_out)
{
    uint16_t adc_value = 0;
    FUNC0(channel < ADC2_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);

    //in critical section with whole rtc module
    FUNC6();

    //avoid collision with other tasks
    FUNC8(&adc2_spinlock);
    //lazy initialization
    //try the lock, return if failed (wifi using).
    if ( FUNC2( &adc2_wifi_lock ) == -1 ) {
        FUNC9( &adc2_spinlock );
        return ESP_ERR_TIMEOUT;
    }

    //disable other peripherals
#ifdef CONFIG_ADC_DISABLE_DAC
    adc2_dac_disable( channel );
#endif
    // set controller
    // in critical section with whole rtc module
    // because the PWDET use the same registers, place it here.
    FUNC3( width_bit );
    FUNC7( ADC_UNIT_2, ADC_CTRL_RTC );
    //start converting
    adc_value = FUNC5( ADC_UNIT_2, channel );
    FUNC1( &adc2_wifi_lock );
    FUNC9(&adc2_spinlock);

    *raw_out = (int)adc_value;
    return ESP_OK;
}