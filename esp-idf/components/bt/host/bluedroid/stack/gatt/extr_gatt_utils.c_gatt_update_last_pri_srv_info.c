
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_last_primary; TYPE_2__* p_first; } ;
typedef TYPE_1__ tGATT_SRV_LIST_INFO ;
struct TYPE_5__ {struct TYPE_5__* p_next; scalar_t__ is_primary; } ;
typedef TYPE_2__ tGATT_SRV_LIST_ELEM ;



void gatt_update_last_pri_srv_info(tGATT_SRV_LIST_INFO *p_list)
{
    tGATT_SRV_LIST_ELEM *p_srv = p_list->p_first;

    p_list->p_last_primary = ((void*)0);

    while (p_srv) {
        if (p_srv->is_primary) {
            p_list->p_last_primary = p_srv;
        }
        p_srv = p_srv->p_next;
    }

}
