
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_3__ {int * channels; int sync_idx; int hd; } ;
typedef TYPE_1__ AptXContext ;


 int AV_RB16 (int const*) ;
 int AV_RB24 (int const*) ;
 int NB_CHANNELS ;
 int aptx_check_parity (int *,int *) ;
 int aptx_decode_channel (int *,int *) ;
 int aptx_generate_dither (int *) ;
 int aptx_invert_quantize_and_prediction (int *,int ) ;
 int aptx_unpack_codeword (int *,int ) ;
 int aptxhd_unpack_codeword (int *,int ) ;

__attribute__((used)) static int aptx_decode_samples(AptXContext *ctx,
                                const uint8_t *input,
                                int32_t samples[NB_CHANNELS][4])
{
    int channel, ret;

    for (channel = 0; channel < NB_CHANNELS; channel++) {
        aptx_generate_dither(&ctx->channels[channel]);

        if (ctx->hd)
            aptxhd_unpack_codeword(&ctx->channels[channel],
                                   AV_RB24(input + 3*channel));
        else
            aptx_unpack_codeword(&ctx->channels[channel],
                                 AV_RB16(input + 2*channel));
        aptx_invert_quantize_and_prediction(&ctx->channels[channel], ctx->hd);
    }

    ret = aptx_check_parity(ctx->channels, &ctx->sync_idx);

    for (channel = 0; channel < NB_CHANNELS; channel++)
        aptx_decode_channel(&ctx->channels[channel], samples[channel]);

    return ret;
}
