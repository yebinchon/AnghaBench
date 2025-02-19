
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ rx_sdu_len; TYPE_6__* p_rx_sdu; } ;
typedef TYPE_4__ tL2C_FCRB ;
struct TYPE_14__ {int user_rx_buf_size; } ;
struct TYPE_18__ {scalar_t__ max_rx_mtu; scalar_t__ local_cid; TYPE_3__* p_lcb; TYPE_1__ ertm_info; TYPE_4__ fcrb; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_20__ {TYPE_2__* fixed_reg; } ;
struct TYPE_19__ {scalar_t__ len; int offset; } ;
struct TYPE_16__ {int remote_bd_addr; } ;
struct TYPE_15__ {int (* pL2CA_FixedData_Cb ) (scalar_t__,int ,TYPE_6__*) ;} ;
typedef TYPE_6__ BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ L2CAP_BASE_APPL_CID ;
 scalar_t__ L2CAP_FCR_END_SDU ;
 scalar_t__ L2CAP_FCR_SEG_BITS ;
 scalar_t__ L2CAP_FCR_START_SDU ;
 scalar_t__ L2CAP_FCR_UNSEG_SDU ;
 scalar_t__ L2CAP_FIRST_FIXED_CHNL ;
 scalar_t__ L2CAP_LAST_FIXED_CHNL ;
 int L2CAP_MAX_BUF_SIZE ;
 scalar_t__ L2CAP_SDU_LEN_OVERHEAD ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__,...) ;
 int L2CAP_TRACE_WARNING (char*,...) ;
 int L2CEVT_L2CAP_DATA ;
 int STREAM_TO_UINT16 (scalar_t__,int *) ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 int l2c_csm_execute (TYPE_5__*,int ,TYPE_6__*) ;
 TYPE_9__ l2cb ;
 int memcpy (int *,int *,scalar_t__) ;
 int osi_free (TYPE_6__*) ;
 scalar_t__ osi_malloc (int ) ;
 int stub1 (scalar_t__,int ,TYPE_6__*) ;

__attribute__((used)) static BOOLEAN do_sar_reassembly (tL2C_CCB *p_ccb, BT_HDR *p_buf, UINT16 ctrl_word)
{
    assert(p_ccb != ((void*)0));
    assert(p_buf != ((void*)0));

    tL2C_FCRB *p_fcrb = &p_ccb->fcrb;
    UINT16 sar_type = ctrl_word & L2CAP_FCR_SEG_BITS;
    BOOLEAN packet_ok = TRUE;
    UINT8 *p;


    if ((sar_type == L2CAP_FCR_UNSEG_SDU) || (sar_type == L2CAP_FCR_START_SDU)) {
        if (p_fcrb->p_rx_sdu != ((void*)0)) {
            L2CAP_TRACE_WARNING ("SAR - got unexpected unsegmented or start SDU  Expected len: %u  Got so far: %u",
                                 p_fcrb->rx_sdu_len, p_fcrb->p_rx_sdu->len);

            packet_ok = FALSE;
        }

        if ( (sar_type == L2CAP_FCR_START_SDU) && (p_buf->len < L2CAP_SDU_LEN_OVERHEAD) ) {
            L2CAP_TRACE_WARNING ("SAR start packet too short: %u", p_buf->len);
            packet_ok = FALSE;
        }
    } else {
        if (p_fcrb->p_rx_sdu == ((void*)0)) {
            L2CAP_TRACE_WARNING ("SAR - got unexpected cont or end SDU");
            packet_ok = FALSE;
        }
    }

    if ( (packet_ok) && (sar_type != L2CAP_FCR_UNSEG_SDU) ) {
        p = ((UINT8 *)(p_buf + 1)) + p_buf->offset;


        if (sar_type == L2CAP_FCR_START_SDU) {

            STREAM_TO_UINT16 (p_fcrb->rx_sdu_len, p);
            p_buf->offset += 2;
            p_buf->len -= 2;

            if (p_fcrb->rx_sdu_len > p_ccb->max_rx_mtu) {
                L2CAP_TRACE_WARNING ("SAR - SDU len: %u  larger than MTU: %u", p_fcrb->rx_sdu_len, p_fcrb->rx_sdu_len);
                packet_ok = FALSE;
            } else if ((p_fcrb->p_rx_sdu = (BT_HDR *)osi_malloc(L2CAP_MAX_BUF_SIZE)) == ((void*)0)) {
                L2CAP_TRACE_ERROR ("SAR - no buffer for SDU start user_rx_buf_size:%d", p_ccb->ertm_info.user_rx_buf_size);
                packet_ok = FALSE;
            } else {
                p_fcrb->p_rx_sdu->offset = 4;
                p_fcrb->p_rx_sdu->len = 0;
            }
        }

        if (packet_ok) {
            if ((p_fcrb->p_rx_sdu->len + p_buf->len) > p_fcrb->rx_sdu_len) {
                L2CAP_TRACE_ERROR ("SAR - SDU len exceeded  Type: %u   Lengths: %u %u %u",
                                   sar_type, p_fcrb->p_rx_sdu->len, p_buf->len, p_fcrb->rx_sdu_len);
                packet_ok = FALSE;
            } else if ( (sar_type == L2CAP_FCR_END_SDU) && ((p_fcrb->p_rx_sdu->len + p_buf->len) != p_fcrb->rx_sdu_len) ) {
                L2CAP_TRACE_WARNING ("SAR - SDU end rcvd but SDU incomplete: %u %u %u",
                                     p_fcrb->p_rx_sdu->len, p_buf->len, p_fcrb->rx_sdu_len);
                packet_ok = FALSE;
            } else {
                memcpy (((UINT8 *) (p_fcrb->p_rx_sdu + 1)) + p_fcrb->p_rx_sdu->offset + p_fcrb->p_rx_sdu->len, p, p_buf->len);

                p_fcrb->p_rx_sdu->len += p_buf->len;

                osi_free (p_buf);
                p_buf = ((void*)0);

                if (sar_type == L2CAP_FCR_END_SDU) {
                    p_buf = p_fcrb->p_rx_sdu;
                    p_fcrb->p_rx_sdu = ((void*)0);
                }
            }
        }
    }

    if (packet_ok == FALSE) {
        osi_free (p_buf);
    } else if (p_buf != ((void*)0)) {
        {
            l2c_csm_execute (p_ccb, L2CEVT_L2CAP_DATA, p_buf);
        }
    }

    return (packet_ok);
}
