
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
struct TYPE_6__ {TYPE_1__ ucd; scalar_t__ psm; scalar_t__ in_use; } ;
typedef TYPE_2__ tL2C_RCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {TYPE_2__* ble_rcb_pool; } ;


 scalar_t__ BLE_MAX_L2CAP_CLIENTS ;
 int L2C_UCD_STATE_UNUSED ;
 scalar_t__ TRUE ;
 TYPE_4__ l2cb ;

tL2C_RCB *l2cu_allocate_ble_rcb (UINT16 psm)
{
    tL2C_RCB *p_rcb = &l2cb.ble_rcb_pool[0];
    UINT16 xx;

    for (xx = 0; xx < BLE_MAX_L2CAP_CLIENTS; xx++, p_rcb++)
    {
        if (!p_rcb->in_use)
        {
            p_rcb->in_use = TRUE;
            p_rcb->psm = psm;

            p_rcb->ucd.state = L2C_UCD_STATE_UNUSED;

            return (p_rcb);
        }
    }


    return (((void*)0));
}
