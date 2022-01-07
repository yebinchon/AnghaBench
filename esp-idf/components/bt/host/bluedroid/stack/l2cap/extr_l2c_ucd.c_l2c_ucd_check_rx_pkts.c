
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tL2C_RCB ;
typedef int tL2C_LCB ;
struct TYPE_6__ {int chnl_state; int * p_rcb; int fixed_chnl_idle_tout; void* remote_cid; void* local_cid; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef int BT_HDR ;
typedef int BOOLEAN ;


 int CST_OPEN ;
 int FALSE ;
 void* L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CAP_UCD_CH_PRIORITY ;
 int L2CAP_UCD_IDLE_TIMEOUT ;
 int L2CEVT_L2CAP_DATA ;
 int L2C_UCD_RCB_ID ;
 int TRUE ;
 int l2c_csm_execute (TYPE_1__*,int ,int *) ;
 TYPE_1__* l2cu_allocate_ccb (int *,int ) ;
 int l2cu_change_pri_ccb (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_find_ccb_by_cid (int *,void*) ;
 int * l2cu_find_rcb_by_psm (int ) ;
 int osi_free (int *) ;

BOOLEAN l2c_ucd_check_rx_pkts(tL2C_LCB *p_lcb, BT_HDR *p_msg)
{
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;

    if (((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) != ((void*)0))
            || ((p_rcb = l2cu_find_rcb_by_psm (L2C_UCD_RCB_ID)) != ((void*)0))) {
        if (p_ccb == ((void*)0)) {

            if ((p_ccb = l2cu_allocate_ccb (p_lcb, 0)) == ((void*)0)) {
                L2CAP_TRACE_WARNING ("L2CAP - no CCB for UCD reception");
                osi_free (p_msg);
                return TRUE;
            } else {

                p_ccb->local_cid = L2CAP_CONNECTIONLESS_CID;
                p_ccb->remote_cid = L2CAP_CONNECTIONLESS_CID;


                p_ccb->fixed_chnl_idle_tout = L2CAP_UCD_IDLE_TIMEOUT;


                l2cu_change_pri_ccb (p_ccb, L2CAP_UCD_CH_PRIORITY);


                p_ccb->p_rcb = p_rcb;

                p_ccb->chnl_state = CST_OPEN;
            }
        }
        l2c_csm_execute(p_ccb, L2CEVT_L2CAP_DATA, p_msg);
        return TRUE;
    } else {
        return FALSE;
    }
}
