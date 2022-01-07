
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OpusRangeCoder ;


 int CELT_PVQ_V (int ,int ) ;
 float celt_cwrsi (int ,int ,int const,int*) ;
 int ff_opus_rc_dec_uint (int *,int ) ;

__attribute__((used)) static inline float celt_decode_pulses(OpusRangeCoder *rc, int *y, uint32_t N, uint32_t K)
{
    const uint32_t idx = ff_opus_rc_dec_uint(rc, CELT_PVQ_V(N, K));
    return celt_cwrsi(N, K, idx, y);
}
