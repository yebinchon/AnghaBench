
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int quantiser_scale_code; int is_intra_slice; int num_macroblocks; int macroblock_address; } ;
typedef TYPE_1__ VAEncSliceParameterBufferMPEG2 ;
struct TYPE_10__ {int block_size; int block_start; TYPE_1__* codec_slice_params; } ;
typedef TYPE_2__ VAAPIEncodeSlice ;
struct TYPE_11__ {int type; } ;
typedef TYPE_3__ VAAPIEncodePicture ;
struct TYPE_12__ {int quant_i; int quant_p; int quant_b; } ;
typedef TYPE_4__ VAAPIEncodeMPEG2Context ;
struct TYPE_13__ {TYPE_4__* priv_data; } ;
typedef TYPE_5__ AVCodecContext ;






 int av_assert0 (int) ;

__attribute__((used)) static int vaapi_encode_mpeg2_init_slice_params(AVCodecContext *avctx,
                                               VAAPIEncodePicture *pic,
                                               VAAPIEncodeSlice *slice)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    VAEncSliceParameterBufferMPEG2 *vslice = slice->codec_slice_params;
    int qp;

    vslice->macroblock_address = slice->block_start;
    vslice->num_macroblocks = slice->block_size;

    switch (pic->type) {
    case 129:
    case 130:
        qp = priv->quant_i;
        break;
    case 128:
        qp = priv->quant_p;
        break;
    case 131:
        qp = priv->quant_b;
        break;
    default:
        av_assert0(0 && "invalid picture type");
    }

    vslice->quantiser_scale_code = qp;
    vslice->is_intra_slice = (pic->type == 129 ||
                              pic->type == 130);

    return 0;
}
