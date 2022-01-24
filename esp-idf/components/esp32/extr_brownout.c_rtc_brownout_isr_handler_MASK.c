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

/* Variables and functions */
 int /*<<< orphan*/  ESP_RST_BROWNOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_BROWN_OUT_INT_CLR ; 
 int /*<<< orphan*/  RTC_CNTL_INT_CLR_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    /* Normally RTC ISR clears the interrupt flag after the application-supplied
     * handler returns. Since restart is called here, the flag needs to be
     * cleared manually.
     */
    FUNC0(RTC_CNTL_INT_CLR_REG, RTC_CNTL_BROWN_OUT_INT_CLR);
    /* Stall the other CPU to make sure the code running there doesn't use UART
     * at the same time as the following ets_printf.
     */
    FUNC1(!FUNC5());
    FUNC2(ESP_RST_BROWNOUT);
    FUNC4("\r\nBrownout detector was triggered\r\n\r\n");
    FUNC3();
}