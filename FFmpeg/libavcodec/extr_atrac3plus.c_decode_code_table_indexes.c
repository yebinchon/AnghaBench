
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* channels; int use_full_table; int used_quant_units; } ;
struct TYPE_5__ {int qu_tab_idx; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int decode_channel_code_tab (int *,TYPE_2__*,int,int *) ;
 int get_bits1 (int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int decode_code_table_indexes(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                     int num_channels, AVCodecContext *avctx)
{
    int ch_num, ret;

    if (!ctx->used_quant_units)
        return 0;

    ctx->use_full_table = get_bits1(gb);

    for (ch_num = 0; ch_num < num_channels; ch_num++) {
        memset(ctx->channels[ch_num].qu_tab_idx, 0,
               sizeof(ctx->channels[ch_num].qu_tab_idx));

        if ((ret = decode_channel_code_tab(gb, ctx, ch_num, avctx)) < 0)
            return ret;
    }

    return 0;
}
