
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_DM_MSG ;
typedef int tBTA_DM_API_SEARCH ;
struct TYPE_2__ {int * p_search_queue; } ;


 TYPE_1__ bta_dm_search_cb ;
 int memcpy (int *,int *,int) ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;

void bta_dm_queue_search (tBTA_DM_MSG *p_data)
{
    if (bta_dm_search_cb.p_search_queue) {
        osi_free(bta_dm_search_cb.p_search_queue);
    }

    bta_dm_search_cb.p_search_queue = (tBTA_DM_MSG *)osi_malloc(sizeof(tBTA_DM_API_SEARCH));
    memcpy(bta_dm_search_cb.p_search_queue, p_data, sizeof(tBTA_DM_API_SEARCH));

}
