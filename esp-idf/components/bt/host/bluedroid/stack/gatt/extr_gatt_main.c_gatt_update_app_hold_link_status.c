
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* app_hold_link; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_IF ;
typedef size_t UINT8 ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 size_t GATT_MAX_APPS ;
 int GATT_TRACE_DEBUG (char*,scalar_t__,size_t,scalar_t__,scalar_t__) ;
 int GATT_TRACE_ERROR (char*) ;
 scalar_t__ TRUE ;

void gatt_update_app_hold_link_status (tGATT_IF gatt_if, tGATT_TCB *p_tcb, BOOLEAN is_add)
{
    UINT8 i;
    BOOLEAN found = FALSE;

    if (p_tcb == ((void*)0)) {
        GATT_TRACE_ERROR("gatt_update_app_hold_link_status p_tcb=NULL");
        return;
    }


    for (i = 0; i < GATT_MAX_APPS; i++) {
        if (p_tcb->app_hold_link[i] == gatt_if) {
            found = TRUE;
            if (!is_add) {
                p_tcb->app_hold_link[i] = 0;
                break;
            }
        }
    }

    if (!found && is_add) {
        for (i = 0; i < GATT_MAX_APPS; i++) {
            if (p_tcb->app_hold_link[i] == 0) {
                p_tcb->app_hold_link[i] = gatt_if;
                found = TRUE;
                break;
            }
        }
    }

    GATT_TRACE_DEBUG("gatt_update_app_hold_link_status found=%d[1-found] idx=%d gatt_if=%d is_add=%d", found, i, gatt_if, is_add);

}
