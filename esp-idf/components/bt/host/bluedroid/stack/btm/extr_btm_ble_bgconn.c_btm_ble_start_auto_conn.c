
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int own_addr_type; } ;
struct TYPE_8__ {scalar_t__ conn_state; scalar_t__ scan_int; scalar_t__ scan_win; scalar_t__ rl_state; int wl_state; TYPE_1__ addr_mgnt_cb; } ;
typedef TYPE_2__ tBTM_BLE_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_11__ {TYPE_2__ ble_ctr_cb; } ;
struct TYPE_10__ {scalar_t__ (* supports_ble_privacy ) () ;} ;
struct TYPE_9__ {int member_0; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_3__ BD_ADDR ;


 int BLE_ADDR_PUBLIC ;
 int BLE_ADDR_TYPE_ID_BIT ;
 scalar_t__ BLE_BG_CONN ;
 scalar_t__ BLE_CONN_CANCEL ;
 scalar_t__ BLE_CONN_IDLE ;
 int BTM_BLE_CONN_INT_MAX_DEF ;
 int BTM_BLE_CONN_INT_MIN_DEF ;
 int BTM_BLE_CONN_SLAVE_LATENCY_DEF ;
 int BTM_BLE_CONN_TIMEOUT_DEF ;
 scalar_t__ BTM_BLE_RL_IDLE ;
 int BTM_BLE_RL_INIT ;
 scalar_t__ BTM_BLE_SCAN_PARAM_UNDEF ;
 scalar_t__ BTM_BLE_SCAN_SLOW_INT_1 ;
 scalar_t__ BTM_BLE_SCAN_SLOW_WIN_1 ;
 int BTM_BLE_STATE_INIT ;
 int BTM_BLE_WL_INIT ;
 int BTM_TRACE_DEBUG (char*,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ background_connections_pending () ;
 int btm_ble_enable_resolving_list_for_platform (int ) ;
 int btm_ble_set_conn_st (scalar_t__) ;
 scalar_t__ btm_ble_topology_check (int ) ;
 TYPE_6__ btm_cb ;
 int btm_execute_wl_dev_operation () ;
 int btsnd_hcic_ble_create_conn_cancel () ;
 int btsnd_hcic_ble_create_ll_conn (scalar_t__,scalar_t__,int,int ,TYPE_3__,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* controller_get_interface () ;
 scalar_t__ stub1 () ;

BOOLEAN btm_ble_start_auto_conn(BOOLEAN start)
{
    tBTM_BLE_CB *p_cb = &btm_cb.ble_ctr_cb;
    BD_ADDR dummy_bda = {0};
    BOOLEAN exec = TRUE;
    UINT16 scan_int;
    UINT16 scan_win;
    UINT8 own_addr_type = p_cb->addr_mgnt_cb.own_addr_type;
    UINT8 peer_addr_type = BLE_ADDR_PUBLIC;

    if (start) {
        if (p_cb->conn_state == BLE_CONN_IDLE && background_connections_pending()
                && btm_ble_topology_check(BTM_BLE_STATE_INIT)) {
            p_cb->wl_state |= BTM_BLE_WL_INIT;

            btm_execute_wl_dev_operation();


            btm_ble_enable_resolving_list_for_platform(BTM_BLE_RL_INIT);

            scan_int = (p_cb->scan_int == BTM_BLE_SCAN_PARAM_UNDEF) ?
                       BTM_BLE_SCAN_SLOW_INT_1 : p_cb->scan_int;
            scan_win = (p_cb->scan_win == BTM_BLE_SCAN_PARAM_UNDEF) ?
                       BTM_BLE_SCAN_SLOW_WIN_1 : p_cb->scan_win;


            if (btm_cb.ble_ctr_cb.rl_state != BTM_BLE_RL_IDLE
                    && controller_get_interface()->supports_ble_privacy()) {
                own_addr_type |= BLE_ADDR_TYPE_ID_BIT;
                peer_addr_type |= BLE_ADDR_TYPE_ID_BIT;
            }


            if (!btsnd_hcic_ble_create_ll_conn (scan_int,
                                                scan_win,
                                                0x01,
                                                peer_addr_type,
                                                dummy_bda,
                                                own_addr_type,
                                                BTM_BLE_CONN_INT_MIN_DEF,
                                                BTM_BLE_CONN_INT_MAX_DEF,
                                                BTM_BLE_CONN_SLAVE_LATENCY_DEF,
                                                BTM_BLE_CONN_TIMEOUT_DEF,
                                                0,
                                                0)) {

                exec = FALSE;
                p_cb->wl_state &= ~BTM_BLE_WL_INIT;
            } else {
                btm_ble_set_conn_st (BLE_BG_CONN);
            }
        } else {
            exec = FALSE;
        }
    } else {
        if (p_cb->conn_state == BLE_BG_CONN) {
            btsnd_hcic_ble_create_conn_cancel();
            btm_ble_set_conn_st (BLE_CONN_CANCEL);
            p_cb->wl_state &= ~BTM_BLE_WL_INIT;
        } else {
            BTM_TRACE_DEBUG("conn_st = %d, not in auto conn state, cannot stop", p_cb->conn_state);
            exec = FALSE;
        }
    }
    return exec;
}
