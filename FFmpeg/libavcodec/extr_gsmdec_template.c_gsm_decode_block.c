
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int** lar; size_t lar_idx; int msr; int * ref_buf; } ;
typedef int GetBitContext ;
typedef TYPE_1__ GSMContext ;
typedef TYPE_2__ AVCodecContext ;


 int apcm_dequant_add (int *,int *,int ) ;
 int av_clip (int,int,int) ;
 int decode_log_area (int,int,int) ;
 int ** ff_gsm_apcm_bits ;
 int get_bits (int *,int) ;
 int long_term_synth (int *,int,int) ;
 int memcpy (int *,int *,int) ;
 int postprocess (int *,int ) ;
 int short_term_synth (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int gsm_decode_block(AVCodecContext *avctx, int16_t *samples,
                            GetBitContext *gb, int mode)
{
    GSMContext *ctx = avctx->priv_data;
    int i;
    int16_t *ref_dst = ctx->ref_buf + 120;
    int *lar = ctx->lar[ctx->lar_idx];
    lar[0] = decode_log_area(get_bits(gb, 6), 13107, 1 << 15);
    lar[1] = decode_log_area(get_bits(gb, 6), 13107, 1 << 15);
    lar[2] = decode_log_area(get_bits(gb, 5), 13107, (1 << 14) + 2048*2);
    lar[3] = decode_log_area(get_bits(gb, 5), 13107, (1 << 14) - 2560*2);
    lar[4] = decode_log_area(get_bits(gb, 4), 19223, (1 << 13) + 94*2);
    lar[5] = decode_log_area(get_bits(gb, 4), 17476, (1 << 13) - 1792*2);
    lar[6] = decode_log_area(get_bits(gb, 3), 31454, (1 << 12) - 341*2);
    lar[7] = decode_log_area(get_bits(gb, 3), 29708, (1 << 12) - 1144*2);

    for (i = 0; i < 4; i++) {
        int lag = get_bits(gb, 7);
        int gain_idx = get_bits(gb, 2);
        int offset = get_bits(gb, 2);
        lag = av_clip(lag, 40, 120);
        long_term_synth(ref_dst, lag, gain_idx);
        apcm_dequant_add(gb, ref_dst + offset, ff_gsm_apcm_bits[mode][i]);
        ref_dst += 40;
    }
    memcpy(ctx->ref_buf, ctx->ref_buf + 160, 120 * sizeof(*ctx->ref_buf));
    short_term_synth(ctx, samples, ctx->ref_buf + 120);


    ctx->msr = postprocess(samples, ctx->msr);
    return 0;
}
