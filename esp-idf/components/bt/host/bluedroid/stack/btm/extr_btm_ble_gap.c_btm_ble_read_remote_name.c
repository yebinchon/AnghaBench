
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_7__ {scalar_t__ ble_evt_type; } ;
struct TYPE_8__ {TYPE_1__ results; } ;
typedef TYPE_2__ tBTM_INQ_INFO ;
struct TYPE_9__ {int rmt_name_timer_ent; int remname_bda; scalar_t__ remname_active; int * p_remname_cmpl_cb; } ;
typedef TYPE_3__ tBTM_INQUIRY_VAR_ST ;
typedef int tBTM_CMPL_CB ;
struct TYPE_11__ {TYPE_3__ btm_inq_vars; } ;
struct TYPE_10__ {int (* supports_ble ) () ;} ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_BLE_EVT_CONN_ADV ;
 scalar_t__ BTM_BLE_EVT_CONN_DIR_ADV ;
 int BTM_BUSY ;
 int BTM_CMD_STARTED ;
 int BTM_ERR_PROCESSING ;
 int BTM_EXT_BLE_RMT_NAME_TIMEOUT ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTU_TTYPE_BTM_RMT_NAME ;
 int GAP_BleReadPeerDevName (int ,int ) ;
 scalar_t__ TRUE ;
 int btm_ble_read_remote_name_cmpl ;
 TYPE_5__ btm_cb ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_4__* controller_get_interface () ;
 int memcpy (int ,int ,int ) ;
 int stub1 () ;

tBTM_STATUS btm_ble_read_remote_name(BD_ADDR remote_bda, tBTM_INQ_INFO *p_cur, tBTM_CMPL_CB *p_cb)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ERR_PROCESSING;
    }

    if (p_cur &&
            p_cur->results.ble_evt_type != BTM_BLE_EVT_CONN_ADV &&
            p_cur->results.ble_evt_type != BTM_BLE_EVT_CONN_DIR_ADV) {
        BTM_TRACE_DEBUG("name request to non-connectable device failed.");
        return BTM_ERR_PROCESSING;
    }


    if (p_inq->remname_active) {
        return BTM_BUSY;
    }







    p_inq->p_remname_cmpl_cb = p_cb;
    p_inq->remname_active = TRUE;

    memcpy(p_inq->remname_bda, remote_bda, BD_ADDR_LEN);

    btu_start_timer (&p_inq->rmt_name_timer_ent,
                     BTU_TTYPE_BTM_RMT_NAME,
                     BTM_EXT_BLE_RMT_NAME_TIMEOUT);

    return BTM_CMD_STARTED;
}
