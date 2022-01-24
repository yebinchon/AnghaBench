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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTA_SUCCESS ; 
 int /*<<< orphan*/  BTC_MAIN_ENABLE_FUTURE ; 
 int /*<<< orphan*/  FUTURE_FAIL ; 
 int /*<<< orphan*/  btc_dm_sec_evt ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
    if (FUNC0(btc_dm_sec_evt) != BTA_SUCCESS) {
        FUNC2(*FUNC1(BTC_MAIN_ENABLE_FUTURE), FUTURE_FAIL);
    }
}