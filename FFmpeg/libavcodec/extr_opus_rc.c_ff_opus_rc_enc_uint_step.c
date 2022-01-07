
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OpusRangeCoder ;


 int opus_rc_enc_update (int *,int,int,int,int ) ;

void ff_opus_rc_enc_uint_step(OpusRangeCoder *rc, uint32_t val, int k0)
{
    const uint32_t a = val <= k0, b = 2*a + 1;
    k0 = (k0 + 1) << 1;
    val = b*(val + k0) - 3*a*k0;
    opus_rc_enc_update(rc, val, val + b, (k0 << 1) - 1, 0);
}
