
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_DM_MSG ;
struct TYPE_2__ {int * p_sdp_db; } ;


 int UNUSED (int *) ;
 int bta_dm_search_cancel_notify (int *) ;
 TYPE_1__ bta_dm_search_cb ;
 int osi_free (int *) ;

void bta_dm_search_cancel_transac_cmpl(tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    if (bta_dm_search_cb.p_sdp_db) {
        osi_free(bta_dm_search_cb.p_sdp_db);
        bta_dm_search_cb.p_sdp_db = ((void*)0);
    }

    bta_dm_search_cancel_notify(((void*)0));
}
