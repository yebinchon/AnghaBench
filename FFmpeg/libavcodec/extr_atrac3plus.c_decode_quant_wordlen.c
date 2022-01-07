
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num_quant_units; int used_quant_units; TYPE_1__* channels; } ;
struct TYPE_5__ {scalar_t__* qu_wordlen; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int decode_channel_wordlen (int *,TYPE_2__*,int,int *) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static int decode_quant_wordlen(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                int num_channels, AVCodecContext *avctx)
{
    int ch_num, i, ret;

    for (ch_num = 0; ch_num < num_channels; ch_num++) {
        memset(ctx->channels[ch_num].qu_wordlen, 0,
               sizeof(ctx->channels[ch_num].qu_wordlen));

        if ((ret = decode_channel_wordlen(gb, ctx, ch_num, avctx)) < 0)
            return ret;
    }



    for (i = ctx->num_quant_units - 1; i >= 0; i--)
        if (ctx->channels[0].qu_wordlen[i] ||
            (num_channels == 2 && ctx->channels[1].qu_wordlen[i]))
            break;
    ctx->used_quant_units = i + 1;

    return 0;
}
