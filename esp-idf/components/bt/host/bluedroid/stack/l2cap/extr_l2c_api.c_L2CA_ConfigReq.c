
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_12__ {scalar_t__ mtu; scalar_t__ mtu_present; void* ext_flow_spec_present; void* fcs_present; TYPE_1__ fcr; int fcr_present; } ;
struct TYPE_11__ {TYPE_3__ our_cfg; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef TYPE_3__ tL2CAP_CFG_INFO ;
typedef scalar_t__ UINT16 ;
typedef void* BOOLEAN ;


 void* FALSE ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 scalar_t__ L2CAP_MTU_SIZE ;
 int L2CAP_TRACE_API (char*,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int L2CAP_TRACE_WARNING (char*,scalar_t__) ;
 int L2CEVT_L2CA_CONFIG_REQ ;
 void* TRUE ;
 int l2c_csm_execute (TYPE_2__*,int ,TYPE_3__*) ;
 int l2c_fcr_adj_our_req_options (TYPE_2__*,TYPE_3__*) ;
 TYPE_2__* l2cu_find_ccb_by_cid (int *,scalar_t__) ;

BOOLEAN L2CA_ConfigReq (UINT16 cid, tL2CAP_CFG_INFO *p_cfg)
{
    tL2C_CCB *p_ccb;


    L2CAP_TRACE_API ("L2CA_ConfigReq()  CID 0x%04x: fcr_present:%d (mode %d) mtu_present:%d (%d)",
                     cid, p_cfg->fcr_present, p_cfg->fcr.mode, p_cfg->mtu_present, p_cfg->mtu);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_cfg_req, CID: %d", cid);
        return (FALSE);
    }


    if (!l2c_fcr_adj_our_req_options(p_ccb, p_cfg)) {
        return (FALSE);
    }


    if ((!p_cfg->fcr_present) || (p_cfg->fcr.mode == L2CAP_FCR_BASIC_MODE)) {

        p_cfg->fcs_present = FALSE;
        p_cfg->ext_flow_spec_present = FALSE;

        if ( (p_cfg->mtu_present) && (p_cfg->mtu > L2CAP_MTU_SIZE) ) {
            L2CAP_TRACE_WARNING ("L2CAP - adjust MTU: %u too large", p_cfg->mtu);
            p_cfg->mtu = L2CAP_MTU_SIZE;
        }
    }


    p_ccb->our_cfg = *p_cfg;

    l2c_csm_execute (p_ccb, L2CEVT_L2CA_CONFIG_REQ, p_cfg);

    return (TRUE);
}
