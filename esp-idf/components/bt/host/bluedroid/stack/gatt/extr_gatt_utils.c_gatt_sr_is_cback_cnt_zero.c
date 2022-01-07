
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* cback_cnt; } ;
struct TYPE_5__ {TYPE_1__ sr_cmd; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef size_t UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t GATT_MAX_APPS ;
 int TRUE ;

BOOLEAN gatt_sr_is_cback_cnt_zero(tGATT_TCB *p_tcb )
{
    BOOLEAN status = TRUE;

    UINT8 i;

    if (p_tcb) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            if (p_tcb->sr_cmd.cback_cnt[i]) {
                status = FALSE;
                break;
            }
        }
    } else {
        status = FALSE;
    }

    return status;
}
