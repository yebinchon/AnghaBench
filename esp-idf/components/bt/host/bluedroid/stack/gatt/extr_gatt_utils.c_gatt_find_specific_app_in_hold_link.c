
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* app_hold_link; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_IF ;
typedef size_t UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;

BOOLEAN gatt_find_specific_app_in_hold_link(tGATT_TCB *p_tcb, tGATT_IF p_gatt_if)
{
    UINT8 i;
    BOOLEAN found = FALSE;

    for (i = 0; i < GATT_MAX_APPS; i ++) {
        if (p_tcb->app_hold_link[i] && p_tcb->app_hold_link[i] == p_gatt_if) {
            found = TRUE;
            break;
        }
    }
    return found;
}
