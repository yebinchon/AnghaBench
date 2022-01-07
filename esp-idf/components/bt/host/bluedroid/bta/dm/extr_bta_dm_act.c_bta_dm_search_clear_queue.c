
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_DM_MSG ;
struct TYPE_2__ {int * p_search_queue; } ;


 int UNUSED (int *) ;
 TYPE_1__ bta_dm_search_cb ;
 int osi_free (int *) ;

void bta_dm_search_clear_queue (tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    if (bta_dm_search_cb.p_search_queue) {
        osi_free(bta_dm_search_cb.p_search_queue);
        bta_dm_search_cb.p_search_queue = ((void*)0);
    }
}
