
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int** decoded; int frameflags; int (* predictor_decode_stereo ) (TYPE_1__*,int) ;scalar_t__ error; int (* entropy_decode_stereo ) (TYPE_1__*,int) ;int avctx; } ;
typedef TYPE_1__ APEContext ;


 int APE_FRAMECODE_STEREO_SILENCE ;
 int AV_LOG_DEBUG ;
 int av_log (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;

__attribute__((used)) static void ape_unpack_stereo(APEContext *ctx, int count)
{
    unsigned left, right;
    int32_t *decoded0 = ctx->decoded[0];
    int32_t *decoded1 = ctx->decoded[1];

    if ((ctx->frameflags & APE_FRAMECODE_STEREO_SILENCE) == APE_FRAMECODE_STEREO_SILENCE) {

        av_log(ctx->avctx, AV_LOG_DEBUG, "pure silence stereo\n");
        return;
    }

    ctx->entropy_decode_stereo(ctx, count);
    if (ctx->error)
        return;


    ctx->predictor_decode_stereo(ctx, count);


    while (count--) {
        left = *decoded1 - (unsigned)(*decoded0 / 2);
        right = left + *decoded0;

        *(decoded0++) = left;
        *(decoded1++) = right;
    }
}
