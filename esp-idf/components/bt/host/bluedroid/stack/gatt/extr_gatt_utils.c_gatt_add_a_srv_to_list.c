
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_2__* p_first; TYPE_2__* p_last; } ;
typedef TYPE_1__ tGATT_SRV_LIST_INFO ;
struct TYPE_7__ {scalar_t__ s_hdl; struct TYPE_7__* p_next; struct TYPE_7__* p_prev; } ;
typedef TYPE_2__ tGATT_SRV_LIST_ELEM ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_DEBUG (char*) ;
 int TRUE ;
 int gatt_update_last_pri_srv_info (TYPE_1__*) ;

BOOLEAN gatt_add_a_srv_to_list(tGATT_SRV_LIST_INFO *p_list, tGATT_SRV_LIST_ELEM *p_new)
{
    tGATT_SRV_LIST_ELEM *p_old;

    if (!p_new) {
        GATT_TRACE_DEBUG("p_new==NULL");
        return FALSE;
    }

    if (!p_list->p_first) {

        p_list->p_first =
            p_list->p_last = p_new;
        p_new->p_next =
            p_new->p_prev = ((void*)0);
    } else {
        p_old = p_list->p_first;
        while (1) {
            if (p_old == ((void*)0)) {
                p_list->p_last->p_next = p_new;
                p_new->p_prev = p_list->p_last;
                p_new->p_next = ((void*)0);
                p_list->p_last = p_new;
                break;
            } else {
                if (p_new->s_hdl < p_old->s_hdl) {

                    if (p_old->p_prev != ((void*)0)) {
                        p_old->p_prev->p_next = p_new;
                    } else {
                        p_list->p_first = p_new;
                    }

                    p_new->p_prev = p_old->p_prev;
                    p_new->p_next = p_old;
                    p_old->p_prev = p_new;
                    break;
                }
            }
            p_old = p_old->p_next;
        }
    }
    p_list->count++;

    gatt_update_last_pri_srv_info(p_list);
    return TRUE;

}
