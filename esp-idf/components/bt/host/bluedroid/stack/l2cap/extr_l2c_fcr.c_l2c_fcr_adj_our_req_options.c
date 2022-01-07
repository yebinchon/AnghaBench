
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ mode; scalar_t__ mps; } ;
struct TYPE_11__ {void* fcr_present; TYPE_4__ fcr; } ;
struct TYPE_10__ {scalar_t__ preferred_mode; int allowed_modes; } ;
struct TYPE_12__ {int config_done; scalar_t__ max_rx_mtu; TYPE_2__ our_cfg; TYPE_1__ ertm_info; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef TYPE_4__ tL2CAP_FCR_OPTS ;
struct TYPE_14__ {scalar_t__ mtu; void* ext_flow_spec_present; void* fcs_present; scalar_t__ mtu_present; void* fcr_present; TYPE_4__ fcr; } ;
typedef TYPE_5__ tL2CAP_CFG_INFO ;
typedef void* BOOLEAN ;


 void* FALSE ;
 scalar_t__ L2CAP_DEFAULT_ERM_MPS ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 int L2CAP_FCR_CHAN_OPT_BASIC ;
 int L2CAP_FCR_CHAN_OPT_ERTM ;
 int L2CAP_FCR_CHAN_OPT_STREAM ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 scalar_t__ L2CAP_FCR_STREAM_MODE ;
 scalar_t__ L2CAP_MAX_HEADER_FCS ;
 scalar_t__ L2CAP_MPS_OVER_BR_EDR ;
 scalar_t__ L2CAP_MTU_SIZE ;
 int L2CAP_TRACE_DEBUG (char*) ;
 int L2CAP_TRACE_WARNING (char*,scalar_t__,...) ;
 int RECONFIG_FLAG ;
 void* TRUE ;
 int assert (int ) ;
 int l2c_fcr_chk_chan_modes (TYPE_3__*) ;
 int l2cu_disconnect_chnl (TYPE_3__*) ;

BOOLEAN l2c_fcr_adj_our_req_options (tL2C_CCB *p_ccb, tL2CAP_CFG_INFO *p_cfg)
{
    assert(p_ccb != ((void*)0));
    assert(p_cfg != ((void*)0));

    tL2CAP_FCR_OPTS *p_fcr = &p_cfg->fcr;

    if (p_fcr->mode != p_ccb->ertm_info.preferred_mode) {
        L2CAP_TRACE_WARNING ("l2c_fcr_adj_our_req_options - preferred_mode (%d), does not match mode (%d)",
                             p_ccb->ertm_info.preferred_mode, p_fcr->mode);


        p_fcr->mode = p_ccb->ertm_info.preferred_mode;
    }


    if (p_ccb->ertm_info.allowed_modes == L2CAP_FCR_CHAN_OPT_BASIC) {
        if (p_cfg->fcr_present && p_fcr->mode != L2CAP_FCR_BASIC_MODE) {
            L2CAP_TRACE_WARNING ("l2c_fcr_adj_our_req_options (mode %d): ERROR: No FCR options set using BASIC mode", p_fcr->mode);
        }
        p_fcr->mode = L2CAP_FCR_BASIC_MODE;
    }




    if (p_cfg->fcr_present && !(p_ccb->config_done & RECONFIG_FLAG)) {

        if (!l2c_fcr_chk_chan_modes(p_ccb)) {

            l2cu_disconnect_chnl (p_ccb);
            return (FALSE);
        }


        else if (p_ccb->ertm_info.allowed_modes == L2CAP_FCR_CHAN_OPT_BASIC) {

            p_cfg->fcr_present = FALSE;
            p_cfg->fcs_present = FALSE;
            p_cfg->ext_flow_spec_present = FALSE;
        }




        else {

            if (p_fcr->mode == L2CAP_FCR_STREAM_MODE && !(p_ccb->ertm_info.allowed_modes & L2CAP_FCR_CHAN_OPT_STREAM)) {
                L2CAP_TRACE_DEBUG ("L2C CFG: mode is STREAM, but peer does not support; Try ERTM");
                p_fcr->mode = L2CAP_FCR_ERTM_MODE;
            }


            if (p_fcr->mode == L2CAP_FCR_ERTM_MODE && !(p_ccb->ertm_info.allowed_modes & L2CAP_FCR_CHAN_OPT_ERTM)) {
                L2CAP_TRACE_DEBUG ("L2C CFG: mode is ERTM, but peer does not support; Try BASIC");
                p_fcr->mode = L2CAP_FCR_BASIC_MODE;
            }
        }

        if (p_fcr->mode != L2CAP_FCR_BASIC_MODE) {

            if ( (p_cfg->mtu_present) && (p_cfg->mtu > p_ccb->max_rx_mtu) ) {
                L2CAP_TRACE_WARNING ("L2CAP - MTU: %u  larger than buf size: %u", p_cfg->mtu, p_ccb->max_rx_mtu);
                return (FALSE);
            }


            if (p_fcr->mps == L2CAP_DEFAULT_ERM_MPS) {
                p_fcr->mps = L2CAP_MPS_OVER_BR_EDR;
            }

            else if (p_fcr->mps > p_ccb->max_rx_mtu) {
                L2CAP_TRACE_WARNING ("L2CAP - MPS  %u  invalid  MTU: %u", p_fcr->mps, p_ccb->max_rx_mtu);
                return (FALSE);
            }


            if (p_fcr->mps > (L2CAP_MTU_SIZE - L2CAP_MAX_HEADER_FCS)) {
                p_fcr->mps = L2CAP_MTU_SIZE - L2CAP_MAX_HEADER_FCS;
            }
        } else {
            p_cfg->fcs_present = FALSE;
            p_cfg->ext_flow_spec_present = FALSE;
        }

        p_ccb->our_cfg.fcr = *p_fcr;
    } else {
        p_ccb->our_cfg.fcr_present = FALSE;
    }

    return (TRUE);
}
