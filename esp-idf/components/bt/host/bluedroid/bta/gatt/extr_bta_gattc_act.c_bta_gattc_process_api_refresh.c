
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ num_clcb; int * p_srvc_cache; scalar_t__ connected; } ;
typedef TYPE_2__ tBTA_GATTC_SERV ;
struct TYPE_9__ {int remote_bda; } ;
struct TYPE_11__ {TYPE_1__ api_conn; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_12__ {scalar_t__ state; TYPE_2__* p_srcb; scalar_t__ in_use; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
typedef int tBTA_GATTC_CB ;
typedef scalar_t__ UINT8 ;
struct TYPE_13__ {TYPE_4__* clcb; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTA_GATTC_CLCB_MAX ;
 scalar_t__ BTA_GATTC_CONN_ST ;
 int BTA_GATTC_INT_DISCOVER_EVT ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int UNUSED (int *) ;
 TYPE_8__ bta_gattc_cb ;
 TYPE_2__* bta_gattc_find_srvr_cache (int ) ;
 int bta_gattc_sm_execute (TYPE_4__*,int ,int *) ;
 int list_free (int *) ;

void bta_gattc_process_api_refresh(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_SERV *p_srvc_cb = bta_gattc_find_srvr_cache(p_msg->api_conn.remote_bda);
    tBTA_GATTC_CLCB *p_clcb = &bta_gattc_cb.clcb[0];
    BOOLEAN found = FALSE;
    UINT8 i;
    UNUSED(p_cb);

    if (p_srvc_cb != ((void*)0)) {

        if (p_srvc_cb->connected && p_srvc_cb->num_clcb != 0) {
            for (i = 0; i < BTA_GATTC_CLCB_MAX; i ++, p_clcb ++) {
                if (p_clcb->in_use && p_clcb->p_srcb == p_srvc_cb) {
                    found = TRUE;
                    break;
                }
            }
            if (found) {

                if(p_clcb->state == BTA_GATTC_CONN_ST) {
                    bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, ((void*)0));
                }
                return;
            }
        }

        if (p_srvc_cb->p_srvc_cache != ((void*)0)) {
            list_free(p_srvc_cb->p_srvc_cache);
            p_srvc_cb->p_srvc_cache = ((void*)0);
        }
    }
}
