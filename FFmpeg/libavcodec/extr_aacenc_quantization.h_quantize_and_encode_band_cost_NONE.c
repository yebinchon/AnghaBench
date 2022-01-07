
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AACEncContext {int dummy; } ;
typedef int PutBitContext ;


 int av_assert0 (int ) ;

__attribute__((used)) static inline float quantize_and_encode_band_cost_NONE(struct AACEncContext *s, PutBitContext *pb,
                                                const float *in, float *quant, const float *scaled,
                                                int size, int scale_idx, int cb,
                                                const float lambda, const float uplim,
                                                int *bits, float *energy) {
    av_assert0(0);
    return 0.0f;
}
