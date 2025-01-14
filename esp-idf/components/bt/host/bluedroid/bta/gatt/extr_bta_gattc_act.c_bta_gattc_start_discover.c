
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_13__ {scalar_t__ auto_update; scalar_t__ transport; scalar_t__ status; int state; TYPE_7__* p_srcb; int searched_service_source; int disc_active; TYPE_2__* p_rcb; int bta_conn_id; int * p_q_cmd; } ;
typedef TYPE_3__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {scalar_t__ status; int conn_id; } ;
struct TYPE_14__ {TYPE_1__ dis_cmpl; } ;
typedef TYPE_4__ tBTA_GATTC ;
struct TYPE_15__ {scalar_t__ state; int server_bda; scalar_t__ update_count; int srvc_hdl_chg; } ;
struct TYPE_12__ {int (* p_cback ) (int ,TYPE_4__*) ;} ;


 int APPL_TRACE_DEBUG (char*,int ,scalar_t__) ;
 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATTC_CONN_ST ;
 scalar_t__ BTA_GATTC_DISC_WAITING ;
 int BTA_GATTC_DIS_SRVC_CMPL_EVT ;
 scalar_t__ BTA_GATTC_NO_SCHEDULE ;
 scalar_t__ BTA_GATTC_REQ_WAITING ;
 int BTA_GATTC_SERVICE_INFO_FROM_REMOTE_DEVICE ;
 scalar_t__ BTA_GATTC_SERV_DISC ;
 scalar_t__ BTA_GATTC_SERV_DISC_ACT ;
 scalar_t__ BTA_GATTC_SERV_IDLE ;
 scalar_t__ BTA_GATT_OK ;
 scalar_t__ BTA_TRANSPORT_LE ;
 int FALSE ;
 int GATT_DISC_SRVC_ALL ;
 int L2CA_EnableUpdateBleConnParams (int ,int ) ;
 int TRUE ;
 int UNUSED (int *) ;
 scalar_t__ bta_gattc_discover_pri_service (int ,TYPE_7__*,int ) ;
 scalar_t__ bta_gattc_init_cache (TYPE_7__*) ;
 int bta_gattc_reset_discover_st (TYPE_7__*,scalar_t__) ;
 int bta_gattc_set_discover_st (TYPE_7__*) ;
 int stub1 (int ,TYPE_4__*) ;

void bta_gattc_start_discover(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UNUSED(p_data);

    APPL_TRACE_DEBUG("bta_gattc_start_discover conn_id=%d p_clcb->p_srcb->state = %d ",
                     p_clcb->bta_conn_id, p_clcb->p_srcb->state);

    if (((p_clcb->p_q_cmd == ((void*)0) || p_clcb->auto_update == BTA_GATTC_REQ_WAITING) &&
            p_clcb->p_srcb->state == BTA_GATTC_SERV_IDLE) ||
            p_clcb->p_srcb->state == BTA_GATTC_SERV_DISC) {

        p_clcb->auto_update = BTA_GATTC_NO_SCHEDULE;

        if (p_clcb->p_srcb != ((void*)0)) {

            p_clcb->p_srcb->srvc_hdl_chg = FALSE;
            p_clcb->p_srcb->update_count = 0;
            p_clcb->p_srcb->state = BTA_GATTC_SERV_DISC_ACT;

            if (p_clcb->transport == BTA_TRANSPORT_LE) {
                L2CA_EnableUpdateBleConnParams(p_clcb->p_srcb->server_bda, FALSE);
            }


            bta_gattc_set_discover_st(p_clcb->p_srcb);

            if ((p_clcb->status = bta_gattc_init_cache(p_clcb->p_srcb)) == BTA_GATT_OK) {
                p_clcb->status = bta_gattc_discover_pri_service(p_clcb->bta_conn_id,
                                 p_clcb->p_srcb, GATT_DISC_SRVC_ALL);
            }
            if (p_clcb->status != BTA_GATT_OK) {
                APPL_TRACE_ERROR("discovery on server failed");
                bta_gattc_reset_discover_st(p_clcb->p_srcb, p_clcb->status);

                tBTA_GATTC cb_data;
                cb_data.dis_cmpl.status = p_clcb->status;
                cb_data.dis_cmpl.conn_id = p_clcb->bta_conn_id;
                ( *p_clcb->p_rcb->p_cback)(BTA_GATTC_DIS_SRVC_CMPL_EVT, &cb_data);
            } else {
                p_clcb->disc_active = TRUE;
            }
            p_clcb->searched_service_source = BTA_GATTC_SERVICE_INFO_FROM_REMOTE_DEVICE;
        } else {
            APPL_TRACE_ERROR("unknown device, can not start discovery");
        }
    }

    else {
        p_clcb->auto_update = BTA_GATTC_DISC_WAITING;

        if (p_clcb->p_srcb->state == BTA_GATTC_SERV_IDLE) {
            p_clcb->state = BTA_GATTC_CONN_ST;
        }
    }

}
