
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_CCB ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int L2CEVT_L2CA_DISCONNECT_RSP ;
 int TRUE ;
 int l2c_csm_execute (int *,int ,int *) ;
 int * l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_DisconnectRsp (UINT16 cid)
{
    tL2C_CCB *p_ccb;


    L2CAP_TRACE_API ("L2CA_DisconnectRsp()  CID: 0x%04x", cid);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_disc_rsp, CID: %d", cid);
        return (FALSE);
    }

    l2c_csm_execute (p_ccb, L2CEVT_L2CA_DISCONNECT_RSP, ((void*)0));

    return (TRUE);
}
