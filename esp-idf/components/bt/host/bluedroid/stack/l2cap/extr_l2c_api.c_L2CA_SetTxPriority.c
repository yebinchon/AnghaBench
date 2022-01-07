
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_CCB ;
typedef int tL2CAP_CHNL_PRIORITY ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int TRUE ;
 int l2cu_change_pri_ccb (int *,int ) ;
 int * l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_SetTxPriority (UINT16 cid, tL2CAP_CHNL_PRIORITY priority)
{
    tL2C_CCB *p_ccb;

    L2CAP_TRACE_API ("L2CA_SetTxPriority()  CID: 0x%04x, priority:%d", cid, priority);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_SetTxPriority, CID: %d", cid);
        return (FALSE);
    }


    l2cu_change_pri_ccb (p_ccb, priority);

    return (TRUE);
}
