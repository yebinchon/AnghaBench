
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t att_lcid; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef size_t UINT16 ;
struct TYPE_5__ {TYPE_1__* tcb; } ;


 size_t GATT_MAX_PHY_CHANNEL ;
 TYPE_3__ gatt_cb ;

tGATT_TCB *gatt_find_tcb_by_cid (UINT16 lcid)
{
    UINT16 xx = 0;
    tGATT_TCB *p_tcb = ((void*)0);

    for (xx = 0; xx < GATT_MAX_PHY_CHANNEL; xx++) {
        if (gatt_cb.tcb[xx].in_use && gatt_cb.tcb[xx].att_lcid == lcid) {
            p_tcb = &gatt_cb.tcb[xx];
            break;
        }
    }
    return p_tcb;
}
