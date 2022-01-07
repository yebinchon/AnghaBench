
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tL2C_RCB ;
struct TYPE_6__ {int handle; int link_state; } ;
typedef TYPE_1__ tL2C_LCB ;
struct TYPE_7__ {int local_cid; int config_done; int remote_cid; int chnl_state; int * p_rcb; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_IsDeviceUp () ;
 int BT_TRANSPORT_BR_EDR ;
 int CFG_DONE_MASK ;
 int CST_OPEN ;
 int FALSE ;
 int L2CAP_TRACE_API (char*,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*,...) ;
 int LST_CONNECTED ;
 TYPE_2__* l2cu_allocate_ccb (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_allocate_lcb (int ,int ,int ) ;
 int * l2cu_find_rcb_by_psm (int ) ;

UINT16 L2CA_LocalLoopbackReq (UINT16 psm, UINT16 handle, BD_ADDR p_bd_addr)
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;

    L2CAP_TRACE_API ("L2CA_LocalLoopbackReq()  PSM: %d  Handle: 0x%04x", psm, handle);


    if (!BTM_IsDeviceUp()) {
        L2CAP_TRACE_WARNING ("L2CAP loop req - BTU not ready");
        return (0);
    }


    if ((p_rcb = l2cu_find_rcb_by_psm (psm)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no RCB for L2CA_conn_req, PSM: %d", psm);
        return (0);
    }

    if ((p_lcb = l2cu_allocate_lcb (p_bd_addr, FALSE, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no LCB for L2CA_conn_req");
        return (0);
    }

    p_lcb->link_state = LST_CONNECTED;
    p_lcb->handle = handle;


    if ((p_ccb = l2cu_allocate_ccb (p_lcb, 0)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_conn_req");
        return (0);
    }


    p_ccb->p_rcb = p_rcb;
    p_ccb->chnl_state = CST_OPEN;
    p_ccb->remote_cid = p_ccb->local_cid;
    p_ccb->config_done = CFG_DONE_MASK;


    return (p_ccb->local_cid);
}
