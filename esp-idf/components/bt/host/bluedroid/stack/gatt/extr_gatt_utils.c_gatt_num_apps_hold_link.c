
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* app_hold_link; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef size_t UINT8 ;


 size_t GATT_MAX_APPS ;
 int GATT_TRACE_DEBUG (char*,size_t) ;

UINT8 gatt_num_apps_hold_link(tGATT_TCB *p_tcb)
{
    UINT8 i, num = 0;

    for (i = 0; i < GATT_MAX_APPS; i ++) {
        if (p_tcb->app_hold_link[i]) {
            num ++;
        }
    }

    GATT_TRACE_DEBUG("gatt_num_apps_hold_link   num=%d", num);
    return num;
}
