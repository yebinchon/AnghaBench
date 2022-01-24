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
 scalar_t__ FUNC0 () ; 
 scalar_t__ BTA_SUCCESS ; 
 int /*<<< orphan*/  BTC_MAIN_DISABLE_FUTURE ; 
 int /*<<< orphan*/  FUTURE_FAIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
#if (SMP_INCLUDED)
    btc_config_shut_down();
#endif
    if (FUNC0() != BTA_SUCCESS) {
        FUNC3(*FUNC2(BTC_MAIN_DISABLE_FUTURE), FUTURE_FAIL);
    }
}