
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cback_cnt; } ;
struct TYPE_5__ {TYPE_1__ sr_cmd; scalar_t__* prep_cnt; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef size_t UINT8 ;


 size_t GATT_MAX_APPS ;

void gatt_sr_copy_prep_cnt_to_cback_cnt(tGATT_TCB *p_tcb )
{

    UINT8 i;

    if (p_tcb) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            if (p_tcb->prep_cnt[i]) {
                p_tcb->sr_cmd.cback_cnt[i] = 1;
            }
        }
    }

}
