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
 int /*<<< orphan*/  ADC1_CHANNEL_6 ; 
 int /*<<< orphan*/  ADC_ATTEN_DB_11 ; 
 int /*<<< orphan*/  ADC_WIDTH_BIT_12 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_NUM_12 ; 
 int /*<<< orphan*/  GPIO_NUM_15 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int ulp_high_thr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int ulp_low_thr ; 
 int ulp_main_bin_end ; 
 int ulp_main_bin_start ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    esp_err_t err = FUNC6(0, ulp_main_bin_start,
            (ulp_main_bin_end - ulp_main_bin_start) / sizeof(uint32_t));
    FUNC0(err);

    /* Configure ADC channel */
    /* Note: when changing channel here, also change 'adc_channel' constant
       in adc.S */
    FUNC1(ADC1_CHANNEL_6, ADC_ATTEN_DB_11);
    FUNC2(ADC_WIDTH_BIT_12);
    FUNC3();

    /* Set low and high thresholds, approx. 1.35V - 1.75V*/
    ulp_low_thr = 1500;
    ulp_high_thr = 2000;

    /* Set ULP wake up period to 20ms */
    FUNC7(0, 20000);

    /* Disconnect GPIO12 and GPIO15 to remove current drain through
     * pullup/pulldown resistors.
     * GPIO12 may be pulled high to select flash voltage.
     */
    FUNC5(GPIO_NUM_12);
    FUNC5(GPIO_NUM_15);
    FUNC4(); // suppress boot messages
}