
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* prep_cnt; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef size_t UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;

BOOLEAN gatt_sr_is_prep_cnt_zero(tGATT_TCB *p_tcb)
{
    BOOLEAN status = TRUE;
    UINT8 i;

    if (p_tcb) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            if (p_tcb->prep_cnt[i]) {
                status = FALSE;
                break;
            }
        }
    } else {
        status = FALSE;
    }
    return status;
}
