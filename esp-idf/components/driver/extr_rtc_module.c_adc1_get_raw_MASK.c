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
typedef  int uint16_t ;
typedef  scalar_t__ adc1_channel_t ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 int /*<<< orphan*/  ADC_CTRL_RTC ; 
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

int FUNC10(adc1_channel_t channel)
{
    uint16_t adc_value;
    FUNC0(channel < ADC1_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);
    FUNC1();
    FUNC6();

    FUNC8(&rtc_spinlock);
    //disable other peripherals
    FUNC3(false);
    FUNC2(); //currently the LNA is not open, close it by default
    //set controller
    FUNC7( ADC_UNIT_1, ADC_CTRL_RTC );
    //start conversion
    adc_value = FUNC5( ADC_UNIT_1, channel );
    FUNC9(&rtc_spinlock);
    FUNC4();
    return adc_value;
}