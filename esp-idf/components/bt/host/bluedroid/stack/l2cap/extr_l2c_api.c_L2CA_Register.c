
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pL2CA_ConnectInd_Cb; int pL2CA_DisconnectInd_Cb; int pL2CA_DataInd_Cb; int pL2CA_ConfigInd_Cb; int pL2CA_ConfigCfm_Cb; } ;
struct TYPE_6__ {int real_psm; TYPE_2__ api; } ;
typedef TYPE_1__ tL2C_RCB ;
typedef TYPE_2__ tL2CAP_APPL_INFO ;
typedef int UINT16 ;


 int L2CAP_TRACE_ERROR (char*,int) ;
 int L2CAP_TRACE_WARNING (char*,int,int) ;
 scalar_t__ L2C_INVALID_PSM (int) ;
 TYPE_1__* l2cu_allocate_rcb (int) ;
 TYPE_1__* l2cu_find_rcb_by_psm (int) ;

UINT16 L2CA_Register (UINT16 psm, tL2CAP_APPL_INFO *p_cb_info)
{
    tL2C_RCB *p_rcb;
    UINT16 vpsm = psm;







    if ((!p_cb_info->pL2CA_ConfigCfm_Cb)
            || (!p_cb_info->pL2CA_ConfigInd_Cb)
            || (!p_cb_info->pL2CA_DataInd_Cb)
            || (!p_cb_info->pL2CA_DisconnectInd_Cb)) {
        L2CAP_TRACE_ERROR ("L2CAP - no cb registering PSM: 0x%04x", psm);
        return (0);
    }


    if (L2C_INVALID_PSM(psm)) {
        L2CAP_TRACE_ERROR ("L2CAP - invalid PSM value, PSM: 0x%04x", psm);
        return (0);
    }



    if ( (psm >= 0x1001) && (p_cb_info->pL2CA_ConnectInd_Cb == ((void*)0)) ) {
        for (vpsm = 0x1002; vpsm < 0x8000; vpsm += 2) {
            if ((p_rcb = l2cu_find_rcb_by_psm (vpsm)) == ((void*)0)) {
                break;
            }
        }


    }


    if ((p_rcb = l2cu_find_rcb_by_psm (vpsm)) == ((void*)0)) {
        if ((p_rcb = l2cu_allocate_rcb (vpsm)) == ((void*)0)) {
            L2CAP_TRACE_WARNING ("L2CAP - no RCB available, PSM: 0x%04x  vPSM: 0x%04x", psm, vpsm);
            return (0);
        }
    }

    p_rcb->api = *p_cb_info;
    p_rcb->real_psm = psm;

    return (vpsm);
}
