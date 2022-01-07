
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_r_key; int peer_i_key; int peer_enc_size; int peer_auth_req; int peer_oob_flag; int peer_io_caps; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;


 int SMP_TRACE_DEBUG (char*) ;
 int UINT8_TO_STREAM (int *,int ) ;

void smp_concatenate_peer( tSMP_CB *p_cb, UINT8 **p_data, UINT8 op_code)
{
    UINT8 *p = *p_data;

    SMP_TRACE_DEBUG ("smp_concatenate_peer \n");
    UINT8_TO_STREAM(p, op_code);
    UINT8_TO_STREAM(p, p_cb->peer_io_caps);
    UINT8_TO_STREAM(p, p_cb->peer_oob_flag);
    UINT8_TO_STREAM(p, p_cb->peer_auth_req);
    UINT8_TO_STREAM(p, p_cb->peer_enc_size);
    UINT8_TO_STREAM(p, p_cb->peer_i_key);
    UINT8_TO_STREAM(p, p_cb->peer_r_key);

    *p_data = p;
}
