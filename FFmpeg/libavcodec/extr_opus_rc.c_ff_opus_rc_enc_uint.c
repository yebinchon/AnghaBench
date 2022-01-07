
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OpusRangeCoder ;


 int FFMAX (scalar_t__,int ) ;
 int ff_opus_rc_put_raw (int *,int,int const) ;
 scalar_t__ opus_ilog (int) ;
 int opus_rc_enc_update (int *,int,int,int,int ) ;

void ff_opus_rc_enc_uint(OpusRangeCoder *rc, uint32_t val, uint32_t size)
{
    const int ps = FFMAX(opus_ilog(size - 1) - 8, 0);
    opus_rc_enc_update(rc, val >> ps, (val >> ps) + 1, ((size - 1) >> ps) + 1, 0);
    ff_opus_rc_put_raw(rc, val, ps);
}
