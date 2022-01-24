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
typedef  int esp_hf_network_state_t ;
typedef  int esp_hf_call_status_t ;
typedef  int esp_hf_call_setup_status_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_IND_CALL ; 
 int /*<<< orphan*/  BTA_AG_IND_CALLSETUP ; 
 int /*<<< orphan*/  BTA_AG_IND_SERVICE ; 
 int /*<<< orphan*/  BTA_AG_IND_SIGNAL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bt_status_t FUNC4(bt_bdaddr_t *bd_addr,
                                                esp_hf_call_status_t call_state,
                                                esp_hf_call_setup_status_t call_setup_state,
                                                esp_hf_network_state_t ntk_state, int signal)
{
    int idx = FUNC1(bd_addr);
    FUNC0();
    if (FUNC2(bd_addr)) {
        /* Send all indicators to BTA.
         * BTA will make sure no duplicates are sent out*/
        FUNC3(BTA_AG_IND_CALL, call_state);
        FUNC3(BTA_AG_IND_CALLSETUP, call_setup_state);
        FUNC3(BTA_AG_IND_SERVICE, ntk_state);
        FUNC3(BTA_AG_IND_SIGNAL, signal);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_SUCCESS;
}