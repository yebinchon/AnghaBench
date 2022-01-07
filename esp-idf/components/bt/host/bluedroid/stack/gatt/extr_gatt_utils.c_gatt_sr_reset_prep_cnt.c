
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* prep_cnt; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef size_t UINT8 ;


 size_t GATT_MAX_APPS ;

void gatt_sr_reset_prep_cnt(tGATT_TCB *p_tcb )
{
    UINT8 i;
    if (p_tcb) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            p_tcb->prep_cnt[i] = 0;
        }
    }
}
