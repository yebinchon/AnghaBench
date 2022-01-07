
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* channels; } ;
struct TYPE_7__ {int num_gain_subbands; int * gain_data; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int ATRAC3P_SUBBANDS ;
 int decode_gainc_levels (int *,TYPE_2__*,int,int) ;
 int decode_gainc_loc_codes (int *,TYPE_2__*,int,int,int *) ;
 int decode_gainc_npoints (int *,TYPE_2__*,int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int decode_gainc_data(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                             int num_channels, AVCodecContext *avctx)
{
    int ch_num, coded_subbands, sb, ret;

    for (ch_num = 0; ch_num < num_channels; ch_num++) {
        memset(ctx->channels[ch_num].gain_data, 0,
               sizeof(*ctx->channels[ch_num].gain_data) * ATRAC3P_SUBBANDS);

        if (get_bits1(gb)) {
            coded_subbands = get_bits(gb, 4) + 1;
            if (get_bits1(gb))
                ctx->channels[ch_num].num_gain_subbands = get_bits(gb, 4) + 1;
            else
                ctx->channels[ch_num].num_gain_subbands = coded_subbands;

            if ((ret = decode_gainc_npoints(gb, ctx, ch_num, coded_subbands)) < 0 ||
                (ret = decode_gainc_levels(gb, ctx, ch_num, coded_subbands)) < 0 ||
                (ret = decode_gainc_loc_codes(gb, ctx, ch_num, coded_subbands, avctx)) < 0)
                return ret;

            if (coded_subbands > 0) {
                for (sb = coded_subbands; sb < ctx->channels[ch_num].num_gain_subbands; sb++)
                    ctx->channels[ch_num].gain_data[sb] =
                        ctx->channels[ch_num].gain_data[sb - 1];
            }
        } else {
            ctx->channels[ch_num].num_gain_subbands = 0;
        }
    }

    return 0;
}
