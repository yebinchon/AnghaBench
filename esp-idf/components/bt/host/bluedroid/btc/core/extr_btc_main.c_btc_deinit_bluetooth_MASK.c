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
 int /*<<< orphan*/  BTC_MAIN_DEINIT_FUTURE ; 
 int /*<<< orphan*/  FUTURE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
#if (BLE_INCLUDED == TRUE)
    FUNC4();
#endif  ///BLE_INCLUDED == TRUE
    FUNC0();
#if (GATTC_INCLUDED)
    bta_gattc_deinit();
#endif /* #if (GATTC_INCLUDED) */
#if (GATTS_INCLUDED)
    bta_gatts_deinit();
#endif /* #if (GATTS_INCLUDED) */
    FUNC6();
#if (SMP_INCLUDED)
    btc_config_clean_up();
#endif
    FUNC8();
    FUNC9();
    FUNC7(*FUNC5(BTC_MAIN_DEINIT_FUTURE), FUTURE_SUCCESS);
}