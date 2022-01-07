
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* app_hold_link; } ;
typedef TYPE_3__ tGATT_TCB ;
typedef int tGATT_IF ;
typedef size_t UINT8 ;
struct TYPE_9__ {TYPE_2__* clcb; } ;
struct TYPE_7__ {TYPE_1__* p_reg; } ;
struct TYPE_6__ {int gatt_if; } ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;
 TYPE_5__ gatt_cb ;

BOOLEAN gatt_find_app_hold_link(tGATT_TCB *p_tcb, UINT8 start_idx, UINT8 *p_found_idx, tGATT_IF *p_gatt_if)
{
    UINT8 i;
    BOOLEAN found = FALSE;

    for (i = start_idx; i < GATT_MAX_APPS; i ++) {
        if (p_tcb->app_hold_link[i]) {
            *p_gatt_if = gatt_cb.clcb[i].p_reg->gatt_if;
            *p_found_idx = i;
            found = TRUE;
            break;
        }
    }
    return found;
}
