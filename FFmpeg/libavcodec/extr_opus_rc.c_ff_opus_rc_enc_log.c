
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OpusRangeCoder ;


 int opus_rc_enc_update (int *,int,int,int,int) ;

void ff_opus_rc_enc_log(OpusRangeCoder *rc, int val, uint32_t bits)
{
    bits = (1 << bits) - 1;
    opus_rc_enc_update(rc, (!!val)*bits, bits + !!val, bits + 1, 1);
}
