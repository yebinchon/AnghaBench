
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* filter_flt ) (int ,int ,int,float*,int,float*,int) ;} ;
struct FFPsyPreprocessContext {int * fstate; int fcoeffs; TYPE_2__ fiir; TYPE_1__* avctx; } ;
struct TYPE_3__ {int frame_size; } ;
typedef TYPE_2__ FFIIRFilterContext ;


 int stub1 (int ,int ,int,float*,int,float*,int) ;

void ff_psy_preprocess(struct FFPsyPreprocessContext *ctx, float **audio, int channels)
{
    int ch;
    int frame_size = ctx->avctx->frame_size;
    FFIIRFilterContext *iir = &ctx->fiir;

    if (ctx->fstate) {
        for (ch = 0; ch < channels; ch++)
            iir->filter_flt(ctx->fcoeffs, ctx->fstate[ch], frame_size,
                            &audio[ch][frame_size], 1, &audio[ch][frame_size], 1);
    }
}
