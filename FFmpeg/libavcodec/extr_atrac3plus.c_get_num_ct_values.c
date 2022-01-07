
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int used_quant_units; } ;
typedef int GetBitContext ;
typedef TYPE_1__ Atrac3pChanUnitCtx ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int get_num_ct_values(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                             AVCodecContext *avctx)
{
    int num_coded_vals;

    if (get_bits1(gb)) {
        num_coded_vals = get_bits(gb, 5);
        if (num_coded_vals > ctx->used_quant_units) {
            av_log(avctx, AV_LOG_ERROR,
                   "Invalid number of code table indexes: %d!\n", num_coded_vals);
            return AVERROR_INVALIDDATA;
        }
        return num_coded_vals;
    } else
        return ctx->used_quant_units;
}
