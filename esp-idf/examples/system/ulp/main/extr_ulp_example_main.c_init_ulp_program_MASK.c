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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  rtc_num; scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t GPIO_NUM_0 ; 
 int /*<<< orphan*/  GPIO_NUM_12 ; 
 int /*<<< orphan*/  GPIO_NUM_15 ; 
 int /*<<< orphan*/  RTC_GPIO_MODE_INPUT_ONLY ; 
 int RTC_SLOW_MEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* rtc_gpio_desc ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int ulp_debounce_counter ; 
 int ulp_debounce_max_count ; 
 int ulp_edge_count_to_wake_up ; 
 int /*<<< orphan*/  ulp_entry ; 
 int /*<<< orphan*/  ulp_io_number ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int ulp_main_bin_end ; 
 int ulp_main_bin_start ; 
 scalar_t__ ulp_next_edge ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(void)
{
    esp_err_t err = FUNC9(0, ulp_main_bin_start,
            (ulp_main_bin_end - ulp_main_bin_start) / sizeof(uint32_t));
    FUNC0(err);

    /* GPIO used for pulse counting. */
    gpio_num_t gpio_num = GPIO_NUM_0;
    FUNC1(rtc_gpio_desc[gpio_num].reg && "GPIO used for pulse counting must be an RTC IO");

    /* Initialize some variables used by ULP program.
     * Each 'ulp_xyz' variable corresponds to 'xyz' variable in the ULP program.
     * These variables are declared in an auto generated header file,
     * 'ulp_main.h', name of this file is defined in component.mk as ULP_APP_NAME.
     * These variables are located in RTC_SLOW_MEM and can be accessed both by the
     * ULP and the main CPUs.
     *
     * Note that the ULP reads only the lower 16 bits of these variables.
     */
    ulp_debounce_counter = 3;
    ulp_debounce_max_count = 3;
    ulp_next_edge = 0;
    ulp_io_number = rtc_gpio_desc[gpio_num].rtc_num; /* map from GPIO# to RTC_IO# */
    ulp_edge_count_to_wake_up = 10;

    /* Initialize selected GPIO as RTC IO, enable input, disable pullup and pulldown */
    FUNC4(gpio_num);
    FUNC8(gpio_num, RTC_GPIO_MODE_INPUT_ONLY);
    FUNC6(gpio_num);
    FUNC7(gpio_num);
    FUNC3(gpio_num);

    /* Disconnect GPIO12 and GPIO15 to remove current drain through
     * pullup/pulldown resistors.
     * GPIO12 may be pulled high to select flash voltage.
     */
    FUNC5(GPIO_NUM_12);
    FUNC5(GPIO_NUM_15);
    FUNC2(); // suppress boot messages

    /* Set ULP wake up period to T = 20ms.
     * Minimum pulse width has to be T * (ulp_debounce_counter + 1) = 80ms.
     */
    FUNC11(0, 20000);

    /* Start the program */
    err = FUNC10(&ulp_entry - RTC_SLOW_MEM);
    FUNC0(err);
}