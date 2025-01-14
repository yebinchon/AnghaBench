
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
struct TYPE_10__ {int* qu_sf_idx; } ;
struct TYPE_9__ {int used_quant_units; TYPE_3__* channels; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;
typedef TYPE_3__ Atrac3pChanParams ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int UNPACK_SF_VQ_SHAPE (int *,int*,int) ;
 int av_log (int *,int ,char*) ;
 int get_bits (int *,int) ;
 int get_bitsz (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_1__* sf_vlc_tabs ;
 int sign_extend (int,int) ;
 int subtract_sf_weights (TYPE_2__*,TYPE_3__*,int,int *) ;

__attribute__((used)) static int decode_channel_sf_idx(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                 int ch_num, AVCodecContext *avctx)
{
    int i, weight_idx = 0, delta, diff, num_long_vals,
        delta_bits, min_val, vlc_sel, start_val;
    VLC *vlc_tab;
    Atrac3pChanParams *chan = &ctx->channels[ch_num];
    Atrac3pChanParams *ref_chan = &ctx->channels[0];

    switch (get_bits(gb, 2)) {
    case 0:
        for (i = 0; i < ctx->used_quant_units; i++)
            chan->qu_sf_idx[i] = get_bits(gb, 6);
        break;
    case 1:
        if (ch_num) {
            vlc_tab = &sf_vlc_tabs[get_bits(gb, 2)];

            for (i = 0; i < ctx->used_quant_units; i++) {
                delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (ref_chan->qu_sf_idx[i] + delta) & 0x3F;
            }
        } else {
            weight_idx = get_bits(gb, 2);
            if (weight_idx == 3) {
                UNPACK_SF_VQ_SHAPE(gb, chan->qu_sf_idx, ctx->used_quant_units);

                num_long_vals = get_bits(gb, 5);
                delta_bits = get_bits(gb, 2);
                min_val = get_bits(gb, 4) - 7;

                for (i = 0; i < num_long_vals; i++)
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] +
                                          get_bits(gb, 4) - 7) & 0x3F;


                for (i = num_long_vals; i < ctx->used_quant_units; i++)
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] + min_val +
                                          get_bitsz(gb, delta_bits)) & 0x3F;
            } else {
                num_long_vals = get_bits(gb, 5);
                delta_bits = get_bits(gb, 3);
                min_val = get_bits(gb, 6);
                if (num_long_vals > ctx->used_quant_units || delta_bits == 7) {
                    av_log(avctx, AV_LOG_ERROR,
                           "SF mode 1: invalid parameters!\n");
                    return AVERROR_INVALIDDATA;
                }


                for (i = 0; i < num_long_vals; i++)
                    chan->qu_sf_idx[i] = get_bits(gb, 6);


                for (i = num_long_vals; i < ctx->used_quant_units; i++)
                    chan->qu_sf_idx[i] = (min_val +
                                          get_bitsz(gb, delta_bits)) & 0x3F;
            }
        }
        break;
    case 2:
        if (ch_num) {
            vlc_tab = &sf_vlc_tabs[get_bits(gb, 2)];

            delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
            chan->qu_sf_idx[0] = (ref_chan->qu_sf_idx[0] + delta) & 0x3F;

            for (i = 1; i < ctx->used_quant_units; i++) {
                diff = ref_chan->qu_sf_idx[i] - ref_chan->qu_sf_idx[i - 1];
                delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (chan->qu_sf_idx[i - 1] + diff + delta) & 0x3F;
            }
        } else {
            vlc_tab = &sf_vlc_tabs[get_bits(gb, 2) + 4];

            UNPACK_SF_VQ_SHAPE(gb, chan->qu_sf_idx, ctx->used_quant_units);

            for (i = 0; i < ctx->used_quant_units; i++) {
                delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
                chan->qu_sf_idx[i] = (chan->qu_sf_idx[i] +
                                      sign_extend(delta, 4)) & 0x3F;
            }
        }
        break;
    case 3:
        if (ch_num) {

            for (i = 0; i < ctx->used_quant_units; i++)
                chan->qu_sf_idx[i] = ref_chan->qu_sf_idx[i];
        } else {
            weight_idx = get_bits(gb, 2);
            vlc_sel = get_bits(gb, 2);
            vlc_tab = &sf_vlc_tabs[vlc_sel];

            if (weight_idx == 3) {
                vlc_tab = &sf_vlc_tabs[vlc_sel + 4];

                UNPACK_SF_VQ_SHAPE(gb, chan->qu_sf_idx, ctx->used_quant_units);

                diff = (get_bits(gb, 4) + 56) & 0x3F;
                chan->qu_sf_idx[0] = (chan->qu_sf_idx[0] + diff) & 0x3F;

                for (i = 1; i < ctx->used_quant_units; i++) {
                    delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
                    diff = (diff + sign_extend(delta, 4)) & 0x3F;
                    chan->qu_sf_idx[i] = (diff + chan->qu_sf_idx[i]) & 0x3F;
                }
            } else {

                chan->qu_sf_idx[0] = get_bits(gb, 6);

                for (i = 1; i < ctx->used_quant_units; i++) {
                    delta = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);
                    chan->qu_sf_idx[i] = (chan->qu_sf_idx[i - 1] + delta) & 0x3F;
                }
            }
        }
        break;
    }

    if (weight_idx && weight_idx < 3)
        return subtract_sf_weights(ctx, chan, weight_idx, avctx);

    return 0;
}
