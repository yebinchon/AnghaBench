
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_LCB ;
typedef int tL2C_CCB ;
typedef int tL2CAP_CHNL_PRIORITY ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_API (char*,int ,int,int) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int TRUE ;
 int l2cu_change_pri_ccb (int *,int ) ;
 int * l2cu_find_ccb_by_cid (int *,int ) ;
 int * l2cu_find_lcb_by_bd_addr (int*,int ) ;

BOOLEAN L2CA_UCDSetTxPriority ( BD_ADDR rem_bda, tL2CAP_CHNL_PRIORITY priority )
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;

    L2CAP_TRACE_API ("L2CA_UCDSetTxPriority()  priority: 0x%02x  BDA: %08x%04x", priority,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);

    if ((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no LCB for L2CA_UCDSetTxPriority");
        return (FALSE);
    }


    if ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_UCDSetTxPriority");
        return (FALSE);
    }


    l2cu_change_pri_ccb (p_ccb, priority);

    return (TRUE);
}
