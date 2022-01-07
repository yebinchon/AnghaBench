
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ transport; } ;
typedef TYPE_2__ tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {int test_info_resp; TYPE_1__* fixed_reg; } ;
struct TYPE_7__ {int * pL2CA_FixedConn_Cb; } ;
typedef int BT_HDR ;


 scalar_t__ BT_TRANSPORT_LE ;
 int HCI_DATA_PREAMBLE_SIZE ;
 int L2CAP_BLE_EXTFEA_MASK ;
 int L2CAP_CMD_INFO_RSP ;
 int L2CAP_CMD_OVERHEAD ;
 scalar_t__ L2CAP_CONNLESS_MTU_INFO_SIZE ;
 int L2CAP_CONNLESS_MTU_INFO_TYPE ;
 scalar_t__ L2CAP_EXTENDED_FEATURES_ARRAY_SIZE ;
 int L2CAP_EXTENDED_FEATURES_INFO_TYPE ;
 int L2CAP_EXTFEA_ENH_RETRANS ;
 int L2CAP_EXTFEA_EXT_FLOW_SPEC ;
 int L2CAP_EXTFEA_EXT_WINDOW ;
 int L2CAP_EXTFEA_FIXED_CHNLS ;
 int L2CAP_EXTFEA_NO_CRC ;
 int L2CAP_EXTFEA_STREAM_MODE ;
 int L2CAP_EXTFEA_SUPPORTED_MASK ;
 int L2CAP_EXTFEA_UCD_RECEPTION ;
 int L2CAP_FIRST_FIXED_CHNL ;
 int L2CAP_FIXED_CHANNELS_INFO_TYPE ;
 scalar_t__ L2CAP_FIXED_CHNL_ARRAY_SIZE ;
 int L2CAP_FIXED_CHNL_CNCTLESS_BIT ;
 int L2CAP_FIXED_CHNL_SIG_BIT ;
 int L2CAP_INFO_RESP_RESULT_NOT_SUPPORTED ;
 int L2CAP_INFO_RESP_RESULT_SUCCESS ;
 int L2CAP_INFO_RSP_LEN ;
 int L2CAP_NUM_FIXED_CHNLS ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CAP_UCD_MTU ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT32_TO_STREAM (int*,int) ;
 int l2c_link_check_send_pkts (TYPE_2__*,int *,int *) ;
 TYPE_5__ l2cb ;
 int * l2cu_build_header (TYPE_2__*,int ,int ,int) ;
 int memset (int*,int ,scalar_t__) ;

void l2cu_send_peer_info_rsp (tL2C_LCB *p_lcb, UINT8 remote_id, UINT16 info_type)
{
    BT_HDR *p_buf;
    UINT8 *p;
    UINT16 len = L2CAP_INFO_RSP_LEN;


    if ((info_type == L2CAP_EXTENDED_FEATURES_INFO_TYPE)
            && (l2cb.test_info_resp & (L2CAP_EXTFEA_ENH_RETRANS | L2CAP_EXTFEA_STREAM_MODE |
                                       L2CAP_EXTFEA_NO_CRC | L2CAP_EXTFEA_EXT_FLOW_SPEC |
                                       L2CAP_EXTFEA_FIXED_CHNLS | L2CAP_EXTFEA_EXT_WINDOW |
                                       L2CAP_EXTFEA_UCD_RECEPTION )) )






    {
        len += L2CAP_EXTENDED_FEATURES_ARRAY_SIZE;
    } else if (info_type == L2CAP_FIXED_CHANNELS_INFO_TYPE) {
        len += L2CAP_FIXED_CHNL_ARRAY_SIZE;
    } else if (info_type == L2CAP_CONNLESS_MTU_INFO_TYPE) {
        len += L2CAP_CONNLESS_MTU_INFO_SIZE;
    }

    if ((p_buf = l2cu_build_header(p_lcb, len, L2CAP_CMD_INFO_RSP, remote_id)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for info_rsp");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE +
        L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, info_type);


    if ((info_type == L2CAP_EXTENDED_FEATURES_INFO_TYPE)
            && (l2cb.test_info_resp & ( L2CAP_EXTFEA_ENH_RETRANS | L2CAP_EXTFEA_STREAM_MODE
                                        | L2CAP_EXTFEA_UCD_RECEPTION )) )





    {
        UINT16_TO_STREAM (p, L2CAP_INFO_RESP_RESULT_SUCCESS);

        if (p_lcb->transport == BT_TRANSPORT_LE) {

            UINT32_TO_STREAM (p, L2CAP_BLE_EXTFEA_MASK);
        } else

        {

            UINT32_TO_STREAM (p, l2cb.test_info_resp);







        }
    } else if (info_type == L2CAP_FIXED_CHANNELS_INFO_TYPE) {
        UINT16_TO_STREAM (p, L2CAP_INFO_RESP_RESULT_SUCCESS);
        memset (p, 0, L2CAP_FIXED_CHNL_ARRAY_SIZE);

        p[0] = L2CAP_FIXED_CHNL_SIG_BIT;

        if ( L2CAP_EXTFEA_SUPPORTED_MASK & L2CAP_EXTFEA_UCD_RECEPTION ) {
            p[0] |= L2CAP_FIXED_CHNL_CNCTLESS_BIT;
        }
    } else if (info_type == L2CAP_CONNLESS_MTU_INFO_TYPE) {
        UINT16_TO_STREAM (p, L2CAP_INFO_RESP_RESULT_SUCCESS);
        UINT16_TO_STREAM (p, L2CAP_UCD_MTU);
    } else {
        UINT16_TO_STREAM (p, L2CAP_INFO_RESP_RESULT_NOT_SUPPORTED);
    }

    l2c_link_check_send_pkts (p_lcb, ((void*)0), p_buf);
}
