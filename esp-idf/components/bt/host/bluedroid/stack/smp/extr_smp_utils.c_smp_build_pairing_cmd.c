
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int local_r_key; int local_i_key; int loc_enc_size; int loc_auth_req; int loc_oob_flag; int local_io_capability; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;
struct TYPE_6__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int L2CAP_MIN_OFFSET ;
 int SMP_PAIRING_REQ_SIZE ;
 int SMP_TRACE_EVENT (char*) ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *smp_build_pairing_cmd(UINT8 cmd_code, tSMP_CB *p_cb)
{
    BT_HDR *p_buf = ((void*)0) ;
    UINT8 *p;

    SMP_TRACE_EVENT("smp_build_pairing_cmd");
    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + SMP_PAIRING_REQ_SIZE + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, cmd_code);
        UINT8_TO_STREAM (p, p_cb->local_io_capability);
        UINT8_TO_STREAM (p, p_cb->loc_oob_flag);
        UINT8_TO_STREAM (p, p_cb->loc_auth_req);
        UINT8_TO_STREAM (p, p_cb->loc_enc_size);
        UINT8_TO_STREAM (p, p_cb->local_i_key);
        UINT8_TO_STREAM (p, p_cb->local_r_key);

        p_buf->offset = L2CAP_MIN_OFFSET;

        p_buf->len = SMP_PAIRING_REQ_SIZE;
    }

    return p_buf;
}
