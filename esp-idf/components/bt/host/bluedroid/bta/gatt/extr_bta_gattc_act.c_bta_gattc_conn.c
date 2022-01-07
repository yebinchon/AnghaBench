
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tBTA_GATT_STATUS ;
typedef int tBTA_GATTC_IF ;
struct TYPE_12__ {int layer_specific; } ;
struct TYPE_14__ {void* already_connect; TYPE_1__ hdr; } ;
struct TYPE_13__ {scalar_t__ layer_specific; } ;
struct TYPE_15__ {TYPE_3__ int_conn; TYPE_2__ hdr; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_16__ {TYPE_8__* p_srcb; int transport; int bta_conn_id; int bda; scalar_t__ p_rcb; int state; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ mtu; void* srvc_hdl_chg; int * p_srvc_cache; int connected; } ;


 int APPL_TRACE_DEBUG (char*,scalar_t__) ;
 int BTA_ALL_APP_ID ;
 int BTA_GATTC_DISCOVER_ST ;
 int BTA_GATTC_INT_DISCOVER_EVT ;
 scalar_t__ BTA_GATTC_SERV_DISC ;
 scalar_t__ BTA_GATTC_SERV_IDLE ;
 scalar_t__ BTA_GATTC_SERV_LOAD ;
 int BTA_GATT_ALREADY_OPEN ;
 int BTA_GATT_OK ;
 int BTA_ID_GATTC ;
 int BTA_TRANSPORT_BR_EDR ;
 void* FALSE ;
 scalar_t__ GATT_DEF_BLE_MTU_SIZE ;
 int GATT_GetConnectionInfor (scalar_t__,int *,int ,int *) ;
 int TRUE ;
 scalar_t__ bta_gattc_cache_load (TYPE_5__*) ;
 int bta_gattc_register_service_change_notify (int ,int ) ;
 int bta_gattc_reset_discover_st (TYPE_8__*,int ) ;
 int bta_gattc_send_open_cback (scalar_t__,int ,int ,int ,int ,scalar_t__) ;
 int bta_gattc_sm_execute (TYPE_5__*,int ,int *) ;
 int bta_gattc_start_discover (TYPE_5__*,int *) ;
 int bta_sys_conn_open (int ,int ,int ) ;

void bta_gattc_conn(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_IF gatt_if;
    APPL_TRACE_DEBUG("bta_gattc_conn server cache state=%d", p_clcb->p_srcb->state);

    if (p_data != ((void*)0)) {
        APPL_TRACE_DEBUG("bta_gattc_conn conn_id=%d", p_data->hdr.layer_specific);
        p_clcb->bta_conn_id = p_data->int_conn.hdr.layer_specific;

        GATT_GetConnectionInfor(p_data->hdr.layer_specific,
                                &gatt_if, p_clcb->bda, &p_clcb->transport);
    }

    p_clcb->p_srcb->connected = TRUE;

    if (p_clcb->p_srcb->mtu == 0) {
        p_clcb->p_srcb->mtu = GATT_DEF_BLE_MTU_SIZE;
    }


    if (p_clcb->p_srcb->p_srvc_cache == ((void*)0) ||
            p_clcb->p_srcb->state != BTA_GATTC_SERV_IDLE) {
        if (p_clcb->p_srcb->state == BTA_GATTC_SERV_IDLE) {

            p_clcb->p_srcb->state = BTA_GATTC_SERV_LOAD;
            if (bta_gattc_cache_load(p_clcb)) {
                p_clcb->p_srcb->state = BTA_GATTC_SERV_IDLE;
                bta_gattc_reset_discover_st(p_clcb->p_srcb, BTA_GATT_OK);

                bta_gattc_register_service_change_notify(p_clcb->bta_conn_id, p_clcb->bda);
            } else

            {
                p_clcb->p_srcb->state = BTA_GATTC_SERV_DISC;

                bta_gattc_start_discover(p_clcb, ((void*)0));
            }
        } else {
            p_clcb->state = BTA_GATTC_DISCOVER_ST;
        }
    } else {

        if (p_clcb->p_srcb->srvc_hdl_chg) {
            p_clcb->p_srcb->srvc_hdl_chg = FALSE;

            bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, ((void*)0));
        }
    }

    if (p_clcb->p_rcb) {

        if (p_clcb->transport == BTA_TRANSPORT_BR_EDR) {
            bta_sys_conn_open(BTA_ID_GATTC, BTA_ALL_APP_ID, p_clcb->bda);
        }
        tBTA_GATT_STATUS status = BTA_GATT_OK;
        if (p_data && p_data->int_conn.already_connect) {

            p_data->int_conn.already_connect = FALSE;
            status = BTA_GATT_ALREADY_OPEN;
        }
        bta_gattc_send_open_cback(p_clcb->p_rcb,
                                  status,
                                  p_clcb->bda,
                                  p_clcb->bta_conn_id,
                                  p_clcb->transport,
                                  p_clcb->p_srcb->mtu);

    }
}
