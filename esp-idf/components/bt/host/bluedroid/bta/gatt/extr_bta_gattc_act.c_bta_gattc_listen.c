
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int (* p_cback ) (int ,TYPE_5__*) ;} ;
typedef TYPE_3__ tBTA_GATTC_RCB ;
struct TYPE_11__ {int client_if; int * remote_bda; scalar_t__ start; } ;
struct TYPE_13__ {TYPE_2__ api_listen; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CB ;
struct TYPE_10__ {int client_if; int status; } ;
struct TYPE_14__ {int status; TYPE_1__ reg_oper; } ;
typedef TYPE_5__ tBTA_GATTC ;
typedef int BD_ADDR_PTR ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_ERROR (char*,...) ;
 int BTA_GATTC_LISTEN_EVT ;
 int BTA_GATT_ERROR ;
 int BTA_GATT_OK ;
 int BTA_GATT_TRANSPORT_LE ;
 int GATT_Listen (int ,scalar_t__,int *) ;
 scalar_t__ HCI_ROLE_SLAVE ;
 scalar_t__ L2CA_GetBleConnRole (int *) ;
 int TRUE ;
 int UNUSED (int *) ;
 TYPE_3__* bta_gattc_cl_get_regcb (int ) ;
 int * bta_gattc_find_clcb_by_cif (int ,int *,int ) ;
 int bta_gattc_init_clcb_conn (int ,int *) ;
 scalar_t__ bta_gattc_mark_bg_conn (int ,int ,scalar_t__,int ) ;
 int bta_gattc_process_listen_all (int ) ;
 int stub1 (int ,TYPE_5__*) ;
 int stub2 (int ,TYPE_5__*) ;

void bta_gattc_listen(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_RCB *p_clreg = bta_gattc_cl_get_regcb(p_msg->api_listen.client_if);
    tBTA_GATTC cb_data;
    UNUSED(p_cb);

    cb_data.reg_oper.status = BTA_GATT_ERROR;
    cb_data.reg_oper.client_if = p_msg->api_listen.client_if;

    if (p_clreg == ((void*)0)) {
        APPL_TRACE_ERROR("bta_gattc_listen failed, unknown client_if: %d",
                         p_msg->api_listen.client_if);
        return;
    }

    if (bta_gattc_mark_bg_conn(p_msg->api_listen.client_if,
                               (BD_ADDR_PTR) p_msg->api_listen.remote_bda,
                               p_msg->api_listen.start,
                               TRUE)) {
        if (!GATT_Listen(p_msg->api_listen.client_if,
                         p_msg->api_listen.start,
                         p_msg->api_listen.remote_bda)) {
            APPL_TRACE_ERROR("Listen failure");
            (*p_clreg->p_cback)(BTA_GATTC_LISTEN_EVT, &cb_data);
        } else {
            cb_data.status = BTA_GATT_OK;

            (*p_clreg->p_cback)(BTA_GATTC_LISTEN_EVT, &cb_data);

            if (p_msg->api_listen.start) {

                if (p_msg->api_listen.remote_bda != ((void*)0)) {


                    if (L2CA_GetBleConnRole(p_msg->api_listen.remote_bda) == HCI_ROLE_SLAVE &&
                            bta_gattc_find_clcb_by_cif(p_msg->api_listen.client_if,
                                                       p_msg->api_listen.remote_bda,
                                                       BTA_GATT_TRANSPORT_LE) == ((void*)0)) {

                        bta_gattc_init_clcb_conn(p_msg->api_listen.client_if,
                                                 p_msg->api_listen.remote_bda);
                    }
                }

                else {
                    APPL_TRACE_DEBUG("Listen For All now");


                    bta_gattc_process_listen_all(p_msg->api_listen.client_if);
                }
            }
        }
    }
}
