
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_bonding; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

void l2cu_update_lcb_4_bonding (BD_ADDR p_bd_addr, BOOLEAN is_bonding)
{
    tL2C_LCB *p_lcb = l2cu_find_lcb_by_bd_addr (p_bd_addr, BT_TRANSPORT_BR_EDR);

    if (p_lcb) {
        p_lcb->is_bonding = is_bonding;
    }
}
