
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int count; TYPE_1__* p_last; TYPE_2__* p_first; } ;
typedef TYPE_3__ tGATT_SRV_LIST_INFO ;
struct TYPE_11__ {TYPE_2__* p_next; TYPE_1__* p_prev; } ;
typedef TYPE_4__ tGATT_SRV_LIST_ELEM ;
struct TYPE_9__ {TYPE_1__* p_prev; } ;
struct TYPE_8__ {TYPE_2__* p_next; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_DEBUG (char*) ;
 int TRUE ;
 int gatt_update_last_pri_srv_info (TYPE_3__*) ;

BOOLEAN gatt_remove_a_srv_from_list(tGATT_SRV_LIST_INFO *p_list, tGATT_SRV_LIST_ELEM *p_remove)
{
    if (!p_remove || !p_list->p_first) {
        GATT_TRACE_DEBUG("p_remove==NULL || p_list->p_first==NULL");
        return FALSE;
    }

    if (p_remove->p_prev == ((void*)0)) {
        p_list->p_first = p_remove->p_next;
        if (p_remove->p_next) {
            p_remove->p_next->p_prev = ((void*)0);
        }
    } else if (p_remove->p_next == ((void*)0)) {
        p_list->p_last = p_remove->p_prev;
        p_remove->p_prev->p_next = ((void*)0);
    } else {
        p_remove->p_next->p_prev = p_remove->p_prev;
        p_remove->p_prev->p_next = p_remove->p_next;
    }
    p_list->count--;
    gatt_update_last_pri_srv_info(p_list);
    return TRUE;

}
