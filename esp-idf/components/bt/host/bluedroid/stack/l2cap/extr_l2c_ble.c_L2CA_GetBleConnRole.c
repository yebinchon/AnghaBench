
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_role; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 int HCI_ROLE_UNKNOWN ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

UINT8 L2CA_GetBleConnRole (BD_ADDR bd_addr)
{
    UINT8 role = HCI_ROLE_UNKNOWN;

    tL2C_LCB *p_lcb;

    if ((p_lcb = l2cu_find_lcb_by_bd_addr (bd_addr, BT_TRANSPORT_LE)) != ((void*)0)) {
        role = p_lcb->link_role;
    }

    return role;
}
