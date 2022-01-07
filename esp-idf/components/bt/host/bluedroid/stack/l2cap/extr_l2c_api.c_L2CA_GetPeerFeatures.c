
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * peer_chnl_mask; int peer_ext_fea; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int L2CAP_FIXED_CHNL_ARRAY_SIZE ;
 int L2CAP_TRACE_API (char*,int,int,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*,int,int) ;
 int TRUE ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 int memcpy (int *,int *,int ) ;

BOOLEAN L2CA_GetPeerFeatures (BD_ADDR bd_addr, UINT32 *p_ext_feat, UINT8 *p_chnl_mask)
{
    tL2C_LCB *p_lcb;


    if ((p_lcb = l2cu_find_lcb_by_bd_addr (bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CA_GetPeerFeatures() No BDA: %08x%04x",
                             (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                             (bd_addr[4] << 8) + bd_addr[5]);
        return (FALSE);
    }

    L2CAP_TRACE_API ("L2CA_GetPeerFeatures() BDA: %08x%04x  ExtFea: 0x%08x  Chnl_Mask[0]: 0x%02x",
                     (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                     (bd_addr[4] << 8) + bd_addr[5], p_lcb->peer_ext_fea, p_lcb->peer_chnl_mask[0]);

    *p_ext_feat = p_lcb->peer_ext_fea;

    memcpy (p_chnl_mask, p_lcb->peer_chnl_mask, L2CAP_FIXED_CHNL_ARRAY_SIZE);

    return (TRUE);
}
