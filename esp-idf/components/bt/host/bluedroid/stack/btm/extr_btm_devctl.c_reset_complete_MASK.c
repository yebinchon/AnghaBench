#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ (* get_ble_resolving_list_max_size ) () ;int (* get_last_features_classic_index ) () ;TYPE_6__* (* get_features_classic ) (int) ;int /*<<< orphan*/  (* get_acl_buffer_count_ble ) () ;int /*<<< orphan*/  (* get_ble_white_list_size ) () ;scalar_t__ (* supports_ble ) () ;scalar_t__ (* supports_ble_privacy ) () ;int /*<<< orphan*/  (* get_sco_buffer_count ) () ;int /*<<< orphan*/  (* get_acl_buffer_count_classic ) () ;} ;
typedef  TYPE_5__ controller_t ;
struct TYPE_12__ {int /*<<< orphan*/  pin_code_len; int /*<<< orphan*/  pin_code; int /*<<< orphan*/  pin_type; } ;
struct TYPE_11__ {int /*<<< orphan*/ * p_select_cback; int /*<<< orphan*/  bg_conn_type; int /*<<< orphan*/  conn_state; } ;
struct TYPE_10__ {int inq_counter; void* page_scan_type; int /*<<< orphan*/  page_scan_period; int /*<<< orphan*/  page_scan_window; void* inq_scan_type; int /*<<< orphan*/  inq_scan_period; int /*<<< orphan*/  inq_scan_window; } ;
struct TYPE_15__ {TYPE_4__ cfg; TYPE_3__ ble_ctr_cb; TYPE_2__ btm_inq_vars; TYPE_1__* sec_dev_rec; } ;
struct TYPE_14__ {int /*<<< orphan*/  as_array; } ;
struct TYPE_9__ {int /*<<< orphan*/  sec_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_CONN_IDLE ; 
 int /*<<< orphan*/  BTM_BLE_CONN_NONE ; 
 int /*<<< orphan*/  BTM_BLE_PRIVATE_ADDR_INT ; 
 int /*<<< orphan*/  BTM_DEV_STATUS_UP ; 
 int BTM_SEC_MAX_DEVICE_RECORDS ; 
 int /*<<< orphan*/  BTM_SEC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_DEF_INQUIRYSCAN_INTERVAL ; 
 int /*<<< orphan*/  HCI_DEF_INQUIRYSCAN_WINDOW ; 
 int /*<<< orphan*/  HCI_DEF_PAGESCAN_INTERVAL ; 
 int /*<<< orphan*/  HCI_DEF_PAGESCAN_WINDOW ; 
 void* HCI_DEF_SCAN_TYPE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_8__ btm_cb ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 TYPE_6__* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 () ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static void FUNC25(void)
{
    const controller_t *controller = FUNC9();

    /* Tell L2CAP that all connections are gone */
    FUNC13 ();
#if (SMP_INCLUDED == TRUE)
    /* Clear current security state */
    for (int devinx = 0; devinx < BTM_SEC_MAX_DEVICE_RECORDS; devinx++) {
        btm_cb.sec_dev_rec[devinx].sec_state = BTM_SEC_STATE_IDLE;
    }
#endif  ///SMP_INCLUDED == TRUE
    /* After the reset controller should restore all parameters to defaults. */
    btm_cb.btm_inq_vars.inq_counter       = 1;
    btm_cb.btm_inq_vars.inq_scan_window   = HCI_DEF_INQUIRYSCAN_WINDOW;
    btm_cb.btm_inq_vars.inq_scan_period   = HCI_DEF_INQUIRYSCAN_INTERVAL;
    btm_cb.btm_inq_vars.inq_scan_type     = HCI_DEF_SCAN_TYPE;

    btm_cb.btm_inq_vars.page_scan_window  = HCI_DEF_PAGESCAN_WINDOW;
    btm_cb.btm_inq_vars.page_scan_period  = HCI_DEF_PAGESCAN_INTERVAL;
    btm_cb.btm_inq_vars.page_scan_type    = HCI_DEF_SCAN_TYPE;

#if (BLE_INCLUDED == TRUE)
    btm_cb.ble_ctr_cb.conn_state = BLE_CONN_IDLE;
    btm_cb.ble_ctr_cb.bg_conn_type = BTM_BLE_CONN_NONE;
    btm_cb.ble_ctr_cb.p_select_cback = NULL;
    FUNC10();
    FUNC1();
#endif

    FUNC5();

    FUNC12(controller->get_acl_buffer_count_classic());
#if BTM_SCO_HCI_INCLUDED == TRUE
    FUNC7(controller->get_sco_buffer_count());
#endif
#if (BLE_INCLUDED == TRUE)

#if (defined BLE_PRIVACY_SPT && BLE_PRIVACY_SPT == TRUE)
    /* Set up the BLE privacy settings */
    if (controller->supports_ble() && controller->supports_ble_privacy() &&
            controller->get_ble_resolving_list_max_size() > 0) {
        btm_ble_resolving_list_init(controller->get_ble_resolving_list_max_size());
        /* set the default random private address timeout */
        btsnd_hcic_ble_set_rand_priv_addr_timeout(BTM_BLE_PRIVATE_ADDR_INT);
    }
#endif

    if (controller->supports_ble()) {
        FUNC3(controller->get_ble_white_list_size());
        FUNC11(controller->get_acl_buffer_count_ble());
    }
#endif
#if (SMP_INCLUDED == TRUE && CLASSIC_BT_INCLUDED == TRUE)
    FUNC0 (btm_cb.cfg.pin_type, btm_cb.cfg.pin_code, btm_cb.cfg.pin_code_len);
#endif  ///SMP_INCLUDED == TRUE && CLASSIC_BT_INCLUDED == TRUE
    for (int i = 0; i <= controller->get_last_features_classic_index(); i++) {
        FUNC4(i, controller->get_features_classic(i)->as_array);
    }

    FUNC6(BTM_DEV_STATUS_UP);
}