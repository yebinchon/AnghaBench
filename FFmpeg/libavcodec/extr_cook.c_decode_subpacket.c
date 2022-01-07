
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int decode_buffer_2; int decode_buffer_1; } ;
struct TYPE_12__ {int size; int num_channels; size_t ch_idx; int mono_previous_buffer2; int gains2; int gains1; scalar_t__ joint_stereo; int mono_previous_buffer1; } ;
typedef TYPE_1__ COOKSubpacket ;
typedef TYPE_2__ COOKContext ;


 int decode_bytes_and_gain (TYPE_2__*,TYPE_1__*,int const*,int *) ;
 int joint_decode (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int memset (int ,int ,int) ;
 int mlt_compensate_output (TYPE_2__*,int ,int *,int ,float*) ;
 int mono_decode (TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static int decode_subpacket(COOKContext *q, COOKSubpacket *p,
                            const uint8_t *inbuffer, float **outbuffer)
{
    int sub_packet_size = p->size;
    int res;

    memset(q->decode_buffer_1, 0, sizeof(q->decode_buffer_1));
    decode_bytes_and_gain(q, p, inbuffer, &p->gains1);

    if (p->joint_stereo) {
        if ((res = joint_decode(q, p, q->decode_buffer_1, q->decode_buffer_2)) < 0)
            return res;
    } else {
        if ((res = mono_decode(q, p, q->decode_buffer_1)) < 0)
            return res;

        if (p->num_channels == 2) {
            decode_bytes_and_gain(q, p, inbuffer + sub_packet_size / 2, &p->gains2);
            if ((res = mono_decode(q, p, q->decode_buffer_2)) < 0)
                return res;
        }
    }

    mlt_compensate_output(q, q->decode_buffer_1, &p->gains1,
                          p->mono_previous_buffer1,
                          outbuffer ? outbuffer[p->ch_idx] : ((void*)0));

    if (p->num_channels == 2) {
        if (p->joint_stereo)
            mlt_compensate_output(q, q->decode_buffer_2, &p->gains1,
                                  p->mono_previous_buffer2,
                                  outbuffer ? outbuffer[p->ch_idx + 1] : ((void*)0));
        else
            mlt_compensate_output(q, q->decode_buffer_2, &p->gains2,
                                  p->mono_previous_buffer2,
                                  outbuffer ? outbuffer[p->ch_idx + 1] : ((void*)0));
    }

    return 0;
}
