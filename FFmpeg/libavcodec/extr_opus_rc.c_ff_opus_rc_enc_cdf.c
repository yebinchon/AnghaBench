
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int OpusRangeCoder ;


 int opus_rc_enc_update (int *,int,int const,int const,int) ;

void ff_opus_rc_enc_cdf(OpusRangeCoder *rc, int val, const uint16_t *cdf)
{
    opus_rc_enc_update(rc, (!!val)*cdf[val], cdf[val + 1], cdf[0], 1);
}
