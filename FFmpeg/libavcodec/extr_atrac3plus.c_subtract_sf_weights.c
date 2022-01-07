
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int8_t ;
struct TYPE_6__ {int* qu_sf_idx; } ;
struct TYPE_5__ {int used_quant_units; } ;
typedef TYPE_1__ Atrac3pChanUnitCtx ;
typedef TYPE_2__ Atrac3pChanParams ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__** atrac3p_sf_weights ;
 int av_log (int *,int ,char*,int,int) ;

__attribute__((used)) static int subtract_sf_weights(Atrac3pChanUnitCtx *ctx,
                               Atrac3pChanParams *chan, int wtab_idx,
                               AVCodecContext *avctx)
{
    int i;
    const int8_t *weights_tab = &atrac3p_sf_weights[wtab_idx - 1][0];

    for (i = 0; i < ctx->used_quant_units; i++) {
        chan->qu_sf_idx[i] -= weights_tab[i];
        if (chan->qu_sf_idx[i] < 0 || chan->qu_sf_idx[i] > 63) {
            av_log(avctx, AV_LOG_ERROR,
                   "SF index out of range: pos=%d, val=%d!\n",
                   i, chan->qu_sf_idx[i]);
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
