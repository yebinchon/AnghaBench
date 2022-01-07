
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mtu; } ;
struct TYPE_10__ {scalar_t__ cong_sent; int buff_quota; int xmit_hold_q; int local_cid; TYPE_1__ peer_cfg; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_11__ {scalar_t__ len; int layer_specific; } ;
typedef TYPE_3__ BT_HDR ;


 int L2CAP_DW_CONGESTED ;
 int L2CAP_DW_FAILED ;
 int L2CAP_DW_SUCCESS ;
 int L2CAP_TRACE_DEBUG (char*,int ,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int L2CEVT_L2CA_DATA_WRITE ;
 int fixed_queue_length (int ) ;
 int l2c_csm_execute (TYPE_2__*,int ,TYPE_3__*) ;
 TYPE_2__* l2cu_find_ccb_by_cid (int *,int ) ;
 int osi_free (TYPE_3__*) ;

UINT8 l2c_data_write (UINT16 cid, BT_HDR *p_data, UINT16 flags)
{
    tL2C_CCB *p_ccb;


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_DataWrite, CID: %d", cid);
        osi_free (p_data);
        return (L2CAP_DW_FAILED);
    }



    if (p_data->len > p_ccb->peer_cfg.mtu) {
        L2CAP_TRACE_WARNING ("L2CAP - CID: 0x%04x  cannot send message bigger than peer's mtu size", cid);
        osi_free (p_data);
        return (L2CAP_DW_FAILED);
    }



    p_data->layer_specific = flags;


    if (p_ccb->cong_sent) {
        L2CAP_TRACE_DEBUG ("L2CAP - CID: 0x%04x cannot send, already congested  xmit_hold_q.count: %u  buff_quota: %u",
                           p_ccb->local_cid,
                           fixed_queue_length(p_ccb->xmit_hold_q),
                           p_ccb->buff_quota);

        osi_free (p_data);
        return (L2CAP_DW_FAILED);
    }




    l2c_csm_execute (p_ccb, L2CEVT_L2CA_DATA_WRITE, p_data);

    if (p_ccb->cong_sent) {
        return (L2CAP_DW_CONGESTED);
    }
    return (L2CAP_DW_SUCCESS);
}
