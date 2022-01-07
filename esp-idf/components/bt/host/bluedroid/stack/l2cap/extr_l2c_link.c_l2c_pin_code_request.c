
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_first_ccb; } ;
struct TYPE_5__ {int timer_entry; TYPE_1__ ccb_queue; } ;
typedef TYPE_2__ tL2C_LCB ;
typedef int BD_ADDR ;


 int BTU_TTYPE_L2CAP_LINK ;
 int BT_TRANSPORT_BR_EDR ;
 int L2CAP_LINK_CONNECT_TOUT_EXT ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_2__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

void l2c_pin_code_request (BD_ADDR bd_addr)
{
    tL2C_LCB *p_lcb = l2cu_find_lcb_by_bd_addr (bd_addr, BT_TRANSPORT_BR_EDR);

    if ( (p_lcb) && (!p_lcb->ccb_queue.p_first_ccb) ) {
        btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_CONNECT_TOUT_EXT);
    }
}
