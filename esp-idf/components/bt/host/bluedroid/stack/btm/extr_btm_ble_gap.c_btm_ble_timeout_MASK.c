#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_BLE_MULTI_ADV_INST ;
struct TYPE_8__ {int /*<<< orphan*/  own_addr_type; } ;
struct TYPE_9__ {TYPE_2__ addr_mgnt_cb; } ;
struct TYPE_7__ {int /*<<< orphan*/  discoverable_mode; int /*<<< orphan*/  connectable_mode; } ;
struct TYPE_11__ {TYPE_3__ ble_ctr_cb; TYPE_1__ btm_inq_vars; } ;
struct TYPE_10__ {int event; scalar_t__ param; } ;
typedef  TYPE_4__ TIMER_LIST_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ADDR_RANDOM ; 
 int /*<<< orphan*/  BTM_BLE_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  BTU_TTYPE_BLE_GAP_FAST_ADV 133 
#define  BTU_TTYPE_BLE_GAP_LIM_DISC 132 
#define  BTU_TTYPE_BLE_INQUIRY 131 
#define  BTU_TTYPE_BLE_OBSERVE 130 
#define  BTU_TTYPE_BLE_RANDOM_ADDR 129 
#define  BTU_TTYPE_BLE_SCAN 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_5__ btm_cb ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ btm_gen_resolve_paddr_low ; 

void FUNC9(TIMER_LIST_ENT *p_tle)
{
    FUNC1 ("btm_ble_timeout");

    switch (p_tle->event) {
    case BTU_TTYPE_BLE_OBSERVE:
        FUNC7();
        break;
    case BTU_TTYPE_BLE_SCAN:
        FUNC5();
        break;
    case BTU_TTYPE_BLE_INQUIRY:
        FUNC6();
        break;

    case BTU_TTYPE_BLE_GAP_LIM_DISC:
        /* lim_timeout expiried, limited discovery should exit now */
        btm_cb.btm_inq_vars.discoverable_mode &= ~BTM_BLE_LIMITED_DISCOVERABLE;
        FUNC3(btm_cb.btm_inq_vars.connectable_mode, btm_cb.btm_inq_vars.discoverable_mode);
        break;

    case BTU_TTYPE_BLE_RANDOM_ADDR:
        if (btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type == BLE_ADDR_RANDOM) {
            if (NULL == (void *)(p_tle->param)) {
                /* refresh the random addr */
                FUNC8((void *)btm_gen_resolve_paddr_low);
            } else {
                if (FUNC0() > 0) {
                    FUNC2((tBTM_BLE_MULTI_ADV_INST *)p_tle->param);
                }
            }
        }
        break;

    case BTU_TTYPE_BLE_GAP_FAST_ADV:
        /* fast adv is completed, fall back to slow adv interval */
        FUNC4();
        break;

    default:
        break;

    }
}