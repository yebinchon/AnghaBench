
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_17__ {int timer_entry; int remote_bd_addr; int link_state; int ble_addr_type; } ;
typedef TYPE_4__ tL2C_LCB ;
struct TYPE_16__ {scalar_t__ min_conn_int; scalar_t__ max_conn_int; scalar_t__ slave_latency; scalar_t__ supervision_tout; } ;
struct TYPE_15__ {int current_addr; int current_addr_type; scalar_t__ current_addr_valid; } ;
struct TYPE_18__ {TYPE_3__ conn_params; TYPE_2__ ble; } ;
typedef TYPE_5__ tBTM_SEC_DEV_REC ;
struct TYPE_14__ {int own_addr_type; } ;
struct TYPE_19__ {scalar_t__ scan_int; scalar_t__ scan_win; TYPE_1__ addr_mgnt_cb; } ;
typedef TYPE_6__ tBTM_BLE_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_20__ {int ble_connecting_bda; int is_ble_connecting; } ;
struct TYPE_13__ {TYPE_6__ ble_ctr_cb; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BLE_ADDR_PUBLIC ;
 int BLE_DIR_CONN ;
 scalar_t__ BTM_BLE_CONN_INT_MAX_DEF ;
 scalar_t__ BTM_BLE_CONN_INT_MIN_DEF ;
 scalar_t__ BTM_BLE_CONN_PARAM_UNDEF ;
 scalar_t__ BTM_BLE_CONN_SLAVE_LATENCY_DEF ;
 scalar_t__ BTM_BLE_CONN_TIMEOUT_DEF ;
 scalar_t__ BTM_BLE_SCAN_FAST_INT ;
 scalar_t__ BTM_BLE_SCAN_FAST_WIN ;
 scalar_t__ BTM_BLE_SCAN_PARAM_UNDEF ;
 int BTM_BLE_STATE_INIT ;
 int BTU_TTYPE_L2CAP_LINK ;
 int FALSE ;
 int L2CAP_BLE_LINK_CONNECT_TOUT ;
 int L2CAP_TRACE_ERROR (char*) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int LST_CONNECTING ;
 int TRUE ;
 int btm_ble_set_conn_st (int ) ;
 int btm_ble_topology_check (int ) ;
 TYPE_12__ btm_cb ;
 TYPE_5__* btm_find_dev (int ) ;
 TYPE_5__* btm_find_or_alloc_dev (int ) ;
 int btsnd_hcic_ble_create_ll_conn (scalar_t__,scalar_t__,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_9__ l2cb ;
 int l2cu_release_lcb (TYPE_4__*) ;
 int memcpy (int ,int ,int) ;

BOOLEAN l2cble_init_direct_conn (tL2C_LCB *p_lcb)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_or_alloc_dev (p_lcb->remote_bd_addr);
    tBTM_BLE_CB *p_cb = &btm_cb.ble_ctr_cb;
    UINT16 scan_int;
    UINT16 scan_win;
    BD_ADDR peer_addr;
    UINT8 peer_addr_type = BLE_ADDR_PUBLIC;
    UINT8 own_addr_type = BLE_ADDR_PUBLIC;


    if (p_dev_rec == ((void*)0)) {
        L2CAP_TRACE_WARNING ("unknown device, can not initate connection");
        return (FALSE);
    }

    scan_int = (p_cb->scan_int == BTM_BLE_SCAN_PARAM_UNDEF) ? BTM_BLE_SCAN_FAST_INT : p_cb->scan_int;
    scan_win = (p_cb->scan_win == BTM_BLE_SCAN_PARAM_UNDEF) ? BTM_BLE_SCAN_FAST_WIN : p_cb->scan_win;

    peer_addr_type = p_lcb->ble_addr_type;
    memcpy(peer_addr, p_lcb->remote_bd_addr, BD_ADDR_LEN);
    if (!btm_ble_topology_check(BTM_BLE_STATE_INIT)) {
        l2cu_release_lcb (p_lcb);
        L2CAP_TRACE_ERROR("initate direct connection fail, topology limitation");
        return FALSE;
    }

    if (!btsnd_hcic_ble_create_ll_conn (scan_int,
                                        scan_win,
                                        FALSE,
                                        peer_addr_type,
                                        peer_addr,
                                        own_addr_type,
                                        (UINT16) ((p_dev_rec->conn_params.min_conn_int != BTM_BLE_CONN_PARAM_UNDEF) ?
                                                p_dev_rec->conn_params.min_conn_int : BTM_BLE_CONN_INT_MIN_DEF),
                                        (UINT16) ((p_dev_rec->conn_params.max_conn_int != BTM_BLE_CONN_PARAM_UNDEF) ?
                                                p_dev_rec->conn_params.max_conn_int : BTM_BLE_CONN_INT_MAX_DEF),
                                        (UINT16) ((p_dev_rec->conn_params.slave_latency != BTM_BLE_CONN_PARAM_UNDEF) ?
                                                p_dev_rec->conn_params.slave_latency : BTM_BLE_CONN_SLAVE_LATENCY_DEF),
                                        (UINT16) ((p_dev_rec->conn_params.supervision_tout != BTM_BLE_CONN_PARAM_UNDEF) ?
                                                p_dev_rec->conn_params.supervision_tout : BTM_BLE_CONN_TIMEOUT_DEF),
                                        0,
                                        0)) {
        l2cu_release_lcb (p_lcb);
        L2CAP_TRACE_ERROR("initate direct connection fail, no resources");
        return (FALSE);
    } else {
        p_lcb->link_state = LST_CONNECTING;
        l2cb.is_ble_connecting = TRUE;
        memcpy (l2cb.ble_connecting_bda, p_lcb->remote_bd_addr, BD_ADDR_LEN);
        btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_BLE_LINK_CONNECT_TOUT);
        btm_ble_set_conn_st (BLE_DIR_CONN);

        return (TRUE);
    }
}
