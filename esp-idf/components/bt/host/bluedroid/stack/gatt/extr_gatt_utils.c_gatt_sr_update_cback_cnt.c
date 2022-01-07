
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* cback_cnt; } ;
struct TYPE_6__ {TYPE_1__ sr_cmd; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef scalar_t__ tGATT_IF ;
typedef size_t UINT8 ;
typedef scalar_t__ BOOLEAN ;


 int gatt_sr_reset_cback_cnt (TYPE_2__*) ;

void gatt_sr_update_cback_cnt(tGATT_TCB *p_tcb, tGATT_IF gatt_if, BOOLEAN is_inc, BOOLEAN is_reset_first)
{

    UINT8 idx = ((UINT8) gatt_if) - 1 ;

    if (p_tcb) {
        if (is_reset_first) {
            gatt_sr_reset_cback_cnt(p_tcb);
        }
        if (is_inc) {
            p_tcb->sr_cmd.cback_cnt[idx]++;
        } else {
            if ( p_tcb->sr_cmd.cback_cnt[idx]) {
                p_tcb->sr_cmd.cback_cnt[idx]--;
            }
        }
    }

}
