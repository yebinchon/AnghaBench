#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_BLE_SCAN_COND_OP ;
struct TYPE_9__ {scalar_t__* pf_counter; } ;
typedef  TYPE_1__ tBTM_BLE_PF_COUNT ;
struct TYPE_10__ {int /*<<< orphan*/  bda; } ;
typedef  TYPE_2__ tBLE_BD_ADDR ;
typedef  scalar_t__ UINT8 ;
struct TYPE_11__ {int /*<<< orphan*/  max_filter; } ;

/* Variables and functions */
 scalar_t__ BTM_BLE_INVALID_COUNTER ; 
 scalar_t__ BTM_BLE_PF_ADDR_FILTER ; 
 scalar_t__ BTM_BLE_PF_LOCAL_NAME ; 
 scalar_t__ BTM_BLE_PF_MANU_DATA ; 
 scalar_t__ BTM_BLE_PF_SRVC_DATA_PATTERN ; 
 scalar_t__ BTM_BLE_PF_TYPE_ALL ; 
 scalar_t__ BTM_BLE_SCAN_COND_ADD ; 
 scalar_t__ BTM_BLE_SCAN_COND_CLEAR ; 
 scalar_t__ BTM_BLE_SCAN_COND_DELETE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ cmn_ble_adv_vsc_cb ; 

UINT8 FUNC6(tBTM_BLE_SCAN_COND_OP action,
                                   UINT8 cond_type, tBLE_BD_ADDR *p_bd_addr,
                                   UINT8 num_available)
{
    tBTM_BLE_PF_COUNT   *p_addr_filter = NULL;
    UINT8               *p_counter = NULL;

    FUNC5();

    if (cond_type > BTM_BLE_PF_TYPE_ALL) {
        FUNC1("unknown PF filter condition type %d", cond_type);
        return BTM_BLE_INVALID_COUNTER;
    }

    /* for these three types of filter, always generic */
    if (BTM_BLE_PF_ADDR_FILTER == cond_type ||
            BTM_BLE_PF_MANU_DATA == cond_type ||
            BTM_BLE_PF_LOCAL_NAME == cond_type ||
            BTM_BLE_PF_SRVC_DATA_PATTERN == cond_type) {
        p_bd_addr = NULL;
    }

    if ((p_addr_filter = FUNC4(p_bd_addr)) == NULL &&
            BTM_BLE_SCAN_COND_ADD == action) {
        p_addr_filter = FUNC2(p_bd_addr->bda);
    }

    if (NULL != p_addr_filter) {
        /* all filter just cleared */
        if ((BTM_BLE_PF_TYPE_ALL == cond_type && BTM_BLE_SCAN_COND_CLEAR == action) ||
                /* or bd address filter been deleted */
                (BTM_BLE_PF_ADDR_FILTER == cond_type &&
                 (BTM_BLE_SCAN_COND_DELETE == action || BTM_BLE_SCAN_COND_CLEAR == action))) {
            FUNC3(p_bd_addr, cond_type);
        }
        /* if not feature selection, update new addition/reduction of the filter counter */
        else if (cond_type != BTM_BLE_PF_TYPE_ALL) {
            p_counter = p_addr_filter->pf_counter;
            if (num_available > 0) {
                p_counter[cond_type] += 1;
            }

            FUNC0("counter = %d, maxfilt = %d, num_avbl=%d",
                            p_counter[cond_type], cmn_ble_adv_vsc_cb.max_filter, num_available);
            return p_counter[cond_type];
        }
    } else {
        FUNC1("no matching filter counter found");
    }
    /* no matching filter located and updated */
    return BTM_BLE_INVALID_COUNTER;
}