
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* D; } ;
typedef TYPE_1__ TM2Context ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static inline void tm2_apply_deltas(TM2Context *ctx, int* Y, int stride, int *deltas, int *last)
{
    unsigned ct, d;
    int i, j;

    for (j = 0; j < 4; j++){
        ct = ctx->D[j];
        for (i = 0; i < 4; i++){
            d = deltas[i + j * 4];
            ct += d;
            last[i] += ct;
            Y[i] = av_clip_uint8(last[i]);
        }
        Y += stride;
        ctx->D[j] = ct;
    }
}
