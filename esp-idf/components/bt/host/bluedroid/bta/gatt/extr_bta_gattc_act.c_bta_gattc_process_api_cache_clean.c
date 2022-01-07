
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p_srvc_cache; } ;
typedef TYPE_2__ tBTA_GATTC_SERV ;
struct TYPE_6__ {int remote_bda; } ;
struct TYPE_8__ {TYPE_1__ api_conn; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CB ;


 int UNUSED (int *) ;
 TYPE_2__* bta_gattc_find_srvr_cache (int ) ;
 int list_free (int *) ;

void bta_gattc_process_api_cache_clean(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_SERV *p_srvc_cb = bta_gattc_find_srvr_cache(p_msg->api_conn.remote_bda);
    UNUSED(p_cb);

    if (p_srvc_cb != ((void*)0) && p_srvc_cb->p_srvc_cache != ((void*)0)) {

        list_free(p_srvc_cb->p_srvc_cache);
        p_srvc_cb->p_srvc_cache = ((void*)0);
    }
}
