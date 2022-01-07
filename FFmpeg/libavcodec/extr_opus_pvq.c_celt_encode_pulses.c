
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OpusRangeCoder ;


 int CELT_PVQ_V (int ,int ) ;
 int celt_icwrsi (int ,int ,int*) ;
 int ff_opus_rc_enc_uint (int *,int ,int ) ;

__attribute__((used)) static inline void celt_encode_pulses(OpusRangeCoder *rc, int *y, uint32_t N, uint32_t K)
{
    ff_opus_rc_enc_uint(rc, celt_icwrsi(N, K, y), CELT_PVQ_V(N, K));
}
