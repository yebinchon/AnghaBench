
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_3__ {int * channels; int hd; int sync_idx; } ;
typedef TYPE_1__ AptXContext ;


 int AV_WB16 (int *,int ) ;
 int AV_WB24 (int *,int ) ;
 int NB_CHANNELS ;
 int aptx_encode_channel (int *,int *,int ) ;
 int aptx_insert_sync (int *,int *) ;
 int aptx_invert_quantize_and_prediction (int *,int ) ;
 int aptx_pack_codeword (int *) ;
 int aptxhd_pack_codeword (int *) ;

__attribute__((used)) static void aptx_encode_samples(AptXContext *ctx,
                                int32_t samples[NB_CHANNELS][4],
                                uint8_t *output)
{
    int channel;
    for (channel = 0; channel < NB_CHANNELS; channel++)
        aptx_encode_channel(&ctx->channels[channel], samples[channel], ctx->hd);

    aptx_insert_sync(ctx->channels, &ctx->sync_idx);

    for (channel = 0; channel < NB_CHANNELS; channel++) {
        aptx_invert_quantize_and_prediction(&ctx->channels[channel], ctx->hd);
        if (ctx->hd)
            AV_WB24(output + 3*channel,
                    aptxhd_pack_codeword(&ctx->channels[channel]));
        else
            AV_WB16(output + 2*channel,
                    aptx_pack_codeword(&ctx->channels[channel]));
    }
}
