#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ link_state; scalar_t__ waiting_update_conn_min_interval; scalar_t__ waiting_update_conn_max_interval; scalar_t__ current_used_conn_interval; scalar_t__ waiting_update_conn_timeout; scalar_t__ current_used_conn_timeout; scalar_t__ waiting_update_conn_latency; scalar_t__ current_used_conn_latency; int updating_param_flag; int* peer_chnl_mask; int /*<<< orphan*/  link_role; int /*<<< orphan*/  conn_update_mask; int /*<<< orphan*/  transport; scalar_t__ handle; int /*<<< orphan*/  timer_entry; } ;
typedef  TYPE_3__ tL2C_LCB ;
struct TYPE_11__ {scalar_t__ min_conn_int; scalar_t__ max_conn_int; scalar_t__ slave_latency; scalar_t__ supervision_tout; } ;
struct TYPE_13__ {int /*<<< orphan*/  sec_bd_name; TYPE_2__ conn_params; } ;
typedef  TYPE_4__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  scalar_t__ UINT16 ;
struct TYPE_14__ {TYPE_1__* fixed_reg; int /*<<< orphan*/  is_ble_connecting; } ;
struct TYPE_10__ {int /*<<< orphan*/  fixed_chnl_opts; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_CONN_IDLE ; 
 scalar_t__ BTM_BLE_CONN_INT_MAX ; 
 scalar_t__ BTM_BLE_CONN_INT_MIN ; 
 scalar_t__ BTM_BLE_CONN_LATENCY_MAX ; 
 scalar_t__ BTM_BLE_CONN_PARAM_UNDEF ; 
 scalar_t__ BTM_BLE_CONN_SUP_TOUT_MAX ; 
 scalar_t__ BTM_BLE_CONN_SUP_TOUT_MIN ; 
 int /*<<< orphan*/  BTM_BLE_RL_INIT ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_ERR_NO_CONNECTION ; 
 int /*<<< orphan*/  HCI_ROLE_MASTER ; 
 size_t L2CAP_ATT_CID ; 
 size_t L2CAP_FIRST_FIXED_CHNL ; 
 int L2CAP_FIXED_CHNL_ATT_BIT ; 
 int L2CAP_FIXED_CHNL_BLE_SIG_BIT ; 
 int L2CAP_FIXED_CHNL_SMP_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  L2C_BLE_NOT_DEFAULT_PARAM ; 
 scalar_t__ LST_CONNECTING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_8__ l2cb ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 

void FUNC13 (UINT16 handle, BD_ADDR bda, tBLE_ADDR_TYPE type,
                               UINT16 conn_interval, UINT16 conn_latency, UINT16 conn_timeout)
{
    tL2C_LCB            *p_lcb;
    tBTM_SEC_DEV_REC    *p_dev_rec = FUNC6 (bda);

    FUNC0 ("l2cble_scanner_conn_comp: HANDLE=%d addr_type=%d conn_interval=%d slave_latency=%d supervision_tout=%d",
                       handle,  type, conn_interval, conn_latency, conn_timeout);

    l2cb.is_ble_connecting = FALSE;

    /* See if we have a link control block for the remote device */
    p_lcb = FUNC11 (bda, BT_TRANSPORT_LE);

    /* If we don't have one, create one. this is auto connection complete. */
    if (!p_lcb) {
        p_lcb = FUNC10 (bda, FALSE, BT_TRANSPORT_LE);
        if (!p_lcb) {
#if (SMP_INCLUDED == TRUE)
            FUNC7 (handle, HCI_ERR_NO_CONNECTION);
            FUNC1 ("l2cble_scanner_conn_comp - failed to allocate LCB");
#endif  ///SMP_INCLUDED == TRUE
            return;
        } else {
            if (!FUNC12 (p_lcb, L2CAP_ATT_CID, &l2cb.fixed_reg[L2CAP_ATT_CID - L2CAP_FIRST_FIXED_CHNL].fixed_chnl_opts)) {
#if (SMP_INCLUDED == TRUE)
                FUNC7 (handle, HCI_ERR_NO_CONNECTION);
                FUNC2 ("l2cble_scanner_conn_comp - LCB but no CCB");
#endif  ///SMP_INCLUDED == TRUE
                return ;
            }
        }
    } else if (p_lcb->link_state != LST_CONNECTING) {
        FUNC1 ("L2CAP got BLE scanner conn_comp in bad state: %d", p_lcb->link_state);
        return;
    }
    FUNC9(&p_lcb->timer_entry);

    /* Save the handle */
    p_lcb->handle = handle;

    /* Connected OK. Change state to connected, we were scanning so we are master */
    p_lcb->link_role  = HCI_ROLE_MASTER;
    p_lcb->transport  = BT_TRANSPORT_LE;

    /* update link parameter, set slave link as non-spec default upon link up */
    p_lcb->waiting_update_conn_min_interval = p_lcb->waiting_update_conn_max_interval = p_lcb->current_used_conn_interval = conn_interval;
    p_lcb->waiting_update_conn_timeout = p_lcb->current_used_conn_timeout = conn_timeout;
    p_lcb->waiting_update_conn_latency = p_lcb->current_used_conn_latency = conn_latency;
    p_lcb->conn_update_mask = L2C_BLE_NOT_DEFAULT_PARAM;
    p_lcb->updating_param_flag = false;

    /* If there are any preferred connection parameters, set them now */
    if ( (p_dev_rec->conn_params.min_conn_int     >= BTM_BLE_CONN_INT_MIN ) &&
            (p_dev_rec->conn_params.min_conn_int     <= BTM_BLE_CONN_INT_MAX ) &&
            (p_dev_rec->conn_params.max_conn_int     >= BTM_BLE_CONN_INT_MIN ) &&
            (p_dev_rec->conn_params.max_conn_int     <= BTM_BLE_CONN_INT_MAX ) &&
            (p_dev_rec->conn_params.slave_latency    <= BTM_BLE_CONN_LATENCY_MAX ) &&
            (p_dev_rec->conn_params.supervision_tout >= BTM_BLE_CONN_SUP_TOUT_MIN) &&
            (p_dev_rec->conn_params.supervision_tout <= BTM_BLE_CONN_SUP_TOUT_MAX) &&
            ((conn_interval < p_dev_rec->conn_params.min_conn_int &&
              p_dev_rec->conn_params.min_conn_int != BTM_BLE_CONN_PARAM_UNDEF) ||
             (conn_interval > p_dev_rec->conn_params.max_conn_int) ||
             (conn_latency > p_dev_rec->conn_params.slave_latency) ||
             (conn_timeout > p_dev_rec->conn_params.supervision_tout))) {
        FUNC2 ("upd_ll_conn_params: HANDLE=%d min_conn_int=%d max_conn_int=%d slave_latency=%d supervision_tout=%d",
                           handle, p_dev_rec->conn_params.min_conn_int, p_dev_rec->conn_params.max_conn_int,
                           p_dev_rec->conn_params.slave_latency, p_dev_rec->conn_params.supervision_tout);

        p_lcb->waiting_update_conn_min_interval = p_dev_rec->conn_params.min_conn_int;
        p_lcb->waiting_update_conn_max_interval = p_dev_rec->conn_params.max_conn_int;
        p_lcb->waiting_update_conn_timeout      = p_dev_rec->conn_params.supervision_tout;
        p_lcb->waiting_update_conn_latency      = p_dev_rec->conn_params.slave_latency;

        FUNC8 (handle,
                                           p_dev_rec->conn_params.min_conn_int,
                                           p_dev_rec->conn_params.max_conn_int,
                                           p_dev_rec->conn_params.slave_latency,
                                           p_dev_rec->conn_params.supervision_tout,
                                           0, 0);
    }

    /* Tell BTM Acl management about the link */
    FUNC3 (bda, NULL, p_dev_rec->sec_bd_name, handle, p_lcb->link_role, BT_TRANSPORT_LE);

    p_lcb->peer_chnl_mask[0] = L2CAP_FIXED_CHNL_ATT_BIT | L2CAP_FIXED_CHNL_BLE_SIG_BIT | L2CAP_FIXED_CHNL_SMP_BIT;

    FUNC5(BLE_CONN_IDLE);

#if BLE_PRIVACY_SPT == TRUE
    FUNC4(BTM_BLE_RL_INIT, TRUE);
#endif
}