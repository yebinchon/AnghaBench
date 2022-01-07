
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rem; scalar_t__ buf; scalar_t__ rng_cur; scalar_t__ ext; scalar_t__ total_bits; int range; scalar_t__ value; } ;
typedef TYPE_1__ OpusRangeCoder ;


 scalar_t__ OPUS_MAX_PACKET_SIZE ;
 scalar_t__ OPUS_RC_BITS ;
 int OPUS_RC_TOP ;
 int ff_opus_rc_dec_raw_init (TYPE_1__*,scalar_t__,int ) ;

void ff_opus_rc_enc_init(OpusRangeCoder *rc)
{
    rc->value = 0;
    rc->range = OPUS_RC_TOP;
    rc->total_bits = OPUS_RC_BITS + 1;
    rc->rem = -1;
    rc->ext = 0;
    rc->rng_cur = rc->buf;
    ff_opus_rc_dec_raw_init(rc, rc->buf + OPUS_MAX_PACKET_SIZE + 8, 0);
}
