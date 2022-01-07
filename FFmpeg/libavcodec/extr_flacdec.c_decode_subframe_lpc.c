
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_7__ {int bps; } ;
struct TYPE_6__ {int (* lpc32 ) (int *,int*,int,int,int ) ;int (* lpc16 ) (int *,int*,int,int,int ) ;} ;
struct TYPE_8__ {int blocksize; TYPE_2__ flac_stream_info; TYPE_1__ dsp; scalar_t__ buggy_lpc; int gb; int avctx; } ;
typedef TYPE_3__ FLACContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,...) ;
 int av_log2 (int) ;
 int decode_residuals (TYPE_3__*,int *,int) ;
 int get_bits (int *,int) ;
 int get_sbits (int *,int) ;
 int get_sbits_long (int *,int) ;
 int lpc_analyze_remodulate (int *,int*,int,int,int ,int) ;
 int stub1 (int *,int*,int,int,int ) ;
 int stub2 (int *,int*,int,int,int ) ;

__attribute__((used)) static int decode_subframe_lpc(FLACContext *s, int32_t *decoded, int pred_order,
                               int bps)
{
    int i, ret;
    int coeff_prec, qlevel;
    int coeffs[32];


    for (i = 0; i < pred_order; i++) {
        decoded[i] = get_sbits_long(&s->gb, bps);
    }

    coeff_prec = get_bits(&s->gb, 4) + 1;
    if (coeff_prec == 16) {
        av_log(s->avctx, AV_LOG_ERROR, "invalid coeff precision\n");
        return AVERROR_INVALIDDATA;
    }
    qlevel = get_sbits(&s->gb, 5);
    if (qlevel < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "qlevel %d not supported, maybe buggy stream\n",
               qlevel);
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < pred_order; i++) {
        coeffs[pred_order - i - 1] = get_sbits(&s->gb, coeff_prec);
    }

    if ((ret = decode_residuals(s, decoded, pred_order)) < 0)
        return ret;

    if ( ( s->buggy_lpc && s->flac_stream_info.bps <= 16)
        || ( !s->buggy_lpc && bps <= 16
            && bps + coeff_prec + av_log2(pred_order) <= 32)) {
        s->dsp.lpc16(decoded, coeffs, pred_order, qlevel, s->blocksize);
    } else {
        s->dsp.lpc32(decoded, coeffs, pred_order, qlevel, s->blocksize);
        if (s->flac_stream_info.bps <= 16)
            lpc_analyze_remodulate(decoded, coeffs, pred_order, qlevel, s->blocksize, bps);
    }

    return 0;
}
