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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RTC_SLOW_MEM ; 
 int /*<<< orphan*/  ulp_entry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ulp_sample_counter ; 

__attribute__((used)) static void FUNC2(void)
{
    /* Reset sample counter */
    ulp_sample_counter = 0;

    /* Start the program */
    esp_err_t err = FUNC1(&ulp_entry - RTC_SLOW_MEM);
    FUNC0(err);
}