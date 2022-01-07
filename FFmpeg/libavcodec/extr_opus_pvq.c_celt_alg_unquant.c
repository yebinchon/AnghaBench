
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum CeltSpread { ____Placeholder_CeltSpread } CeltSpread ;
struct TYPE_3__ {int* qcoeff; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltPVQ ;


 int celt_decode_pulses (int *,int*,int ,int ) ;
 int celt_exp_rotation (float*,int ,int ,int ,int,int ) ;
 int celt_extract_collapse_mask (int*,int ,int ) ;
 int celt_normalize_residual (int*,float*,int ,float) ;
 float sqrtf (int ) ;

__attribute__((used)) static uint32_t celt_alg_unquant(OpusRangeCoder *rc, float *X, uint32_t N, uint32_t K,
                                 enum CeltSpread spread, uint32_t blocks, float gain,
                                 CeltPVQ *pvq)
{
    int *y = pvq->qcoeff;

    gain /= sqrtf(celt_decode_pulses(rc, y, N, K));
    celt_normalize_residual(y, X, N, gain);
    celt_exp_rotation(X, N, blocks, K, spread, 0);
    return celt_extract_collapse_mask(y, N, blocks);
}
