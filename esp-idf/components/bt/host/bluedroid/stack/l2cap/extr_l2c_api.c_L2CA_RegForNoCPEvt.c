
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_nocp_cb; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int tL2CA_NOCP_CB ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

BOOLEAN L2CA_RegForNoCPEvt(tL2CA_NOCP_CB *p_cb, BD_ADDR p_bda)
{
    tL2C_LCB *p_lcb;


    p_lcb = l2cu_find_lcb_by_bd_addr (p_bda, BT_TRANSPORT_BR_EDR);


    if (!p_lcb) {
        return FALSE;
    }

    p_lcb->p_nocp_cb = p_cb;

    return TRUE;
}
