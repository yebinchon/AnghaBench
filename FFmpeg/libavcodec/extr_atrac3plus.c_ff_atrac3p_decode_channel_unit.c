
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int num_quant_units; int used_quant_units; void* noise_table_index; void* noise_level_index; void* noise_present; void* num_coded_subbands; int negate_coeffs; int swap_channels; void* num_subbands; void* mute_flag; } ;
typedef int GetBitContext ;
typedef TYPE_1__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 void** atrac3p_qu_to_subband ;
 int av_log (int *,int ,char*,int) ;
 int decode_code_table_indexes (int *,TYPE_1__*,int,int *) ;
 int decode_gainc_data (int *,TYPE_1__*,int,int *) ;
 int decode_quant_wordlen (int *,TYPE_1__*,int,int *) ;
 int decode_scale_factors (int *,TYPE_1__*,int,int *) ;
 int decode_spectrum (int *,TYPE_1__*,int,int *) ;
 int decode_tones_info (int *,TYPE_1__*,int,int *) ;
 int decode_window_shape (int *,TYPE_1__*,int) ;
 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int get_subband_flags (int *,int ,void*) ;

int ff_atrac3p_decode_channel_unit(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                   int num_channels, AVCodecContext *avctx)
{
    int ret;


    ctx->num_quant_units = get_bits(gb, 5) + 1;
    if (ctx->num_quant_units > 28 && ctx->num_quant_units < 32) {
        av_log(avctx, AV_LOG_ERROR,
               "Invalid number of quantization units: %d!\n",
               ctx->num_quant_units);
        return AVERROR_INVALIDDATA;
    }

    ctx->mute_flag = get_bits1(gb);


    if ((ret = decode_quant_wordlen(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    ctx->num_subbands = atrac3p_qu_to_subband[ctx->num_quant_units - 1] + 1;
    ctx->num_coded_subbands = ctx->used_quant_units
                              ? atrac3p_qu_to_subband[ctx->used_quant_units - 1] + 1
                              : 0;

    if ((ret = decode_scale_factors(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    if ((ret = decode_code_table_indexes(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    decode_spectrum(gb, ctx, num_channels, avctx);

    if (num_channels == 2) {
        get_subband_flags(gb, ctx->swap_channels, ctx->num_coded_subbands);
        get_subband_flags(gb, ctx->negate_coeffs, ctx->num_coded_subbands);
    }

    decode_window_shape(gb, ctx, num_channels);

    if ((ret = decode_gainc_data(gb, ctx, num_channels, avctx)) < 0)
        return ret;

    if ((ret = decode_tones_info(gb, ctx, num_channels, avctx)) < 0)
        return ret;


    ctx->noise_present = get_bits1(gb);
    if (ctx->noise_present) {
        ctx->noise_level_index = get_bits(gb, 4);
        ctx->noise_table_index = get_bits(gb, 4);
    }

    return 0;
}
