
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int** f_code; scalar_t__ temporal_reference; int backward_reference_picture; int forward_reference_picture; int picture_type; int coded_buf; int reconstructed_picture; } ;
typedef TYPE_4__ VAEncPictureParameterBufferMPEG2 ;
struct TYPE_16__ {int type; TYPE_3__** refs; int output_buffer; int recon_surface; scalar_t__ display_order; TYPE_4__* codec_picture_params; } ;
typedef TYPE_5__ VAAPIEncodePicture ;
struct TYPE_19__ {int** f_code; } ;
struct TYPE_12__ {TYPE_8__ picture_coding; } ;
struct TYPE_13__ {TYPE_1__ data; } ;
struct TYPE_18__ {int picture_coding_type; scalar_t__ temporal_reference; } ;
struct TYPE_17__ {int f_code_horizontal; int f_code_vertical; scalar_t__ last_i_frame; TYPE_2__ picture_coding_extension; TYPE_7__ picture_header; } ;
typedef TYPE_6__ VAAPIEncodeMPEG2Context ;
struct TYPE_20__ {TYPE_6__* priv_data; } ;
struct TYPE_14__ {int recon_surface; } ;
typedef TYPE_7__ MPEG2RawPictureHeader ;
typedef TYPE_8__ MPEG2RawPictureCodingExtension ;
typedef TYPE_9__ AVCodecContext ;






 int VAEncPictureTypeBidirectional ;
 int VAEncPictureTypeIntra ;
 int VAEncPictureTypePredictive ;
 int av_assert0 (int) ;

__attribute__((used)) static int vaapi_encode_mpeg2_init_picture_params(AVCodecContext *avctx,
                                                 VAAPIEncodePicture *pic)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    MPEG2RawPictureHeader *ph = &priv->picture_header;
    MPEG2RawPictureCodingExtension *pce = &priv->picture_coding_extension.data.picture_coding;
    VAEncPictureParameterBufferMPEG2 *vpic = pic->codec_picture_params;

    if (pic->type == 129 || pic->type == 130) {
        ph->temporal_reference = 0;
        ph->picture_coding_type = 1;
        priv->last_i_frame = pic->display_order;
    } else {
        ph->temporal_reference = pic->display_order - priv->last_i_frame;
        ph->picture_coding_type = pic->type == 131 ? 3 : 2;
    }

    if (pic->type == 128 || pic->type == 131) {
        pce->f_code[0][0] = priv->f_code_horizontal;
        pce->f_code[0][1] = priv->f_code_vertical;
    } else {
        pce->f_code[0][0] = 15;
        pce->f_code[0][1] = 15;
    }
    if (pic->type == 131) {
        pce->f_code[1][0] = priv->f_code_horizontal;
        pce->f_code[1][1] = priv->f_code_vertical;
    } else {
        pce->f_code[1][0] = 15;
        pce->f_code[1][1] = 15;
    }

    vpic->reconstructed_picture = pic->recon_surface;
    vpic->coded_buf = pic->output_buffer;

    switch (pic->type) {
    case 129:
    case 130:
        vpic->picture_type = VAEncPictureTypeIntra;
        break;
    case 128:
        vpic->picture_type = VAEncPictureTypePredictive;
        vpic->forward_reference_picture = pic->refs[0]->recon_surface;
        break;
    case 131:
        vpic->picture_type = VAEncPictureTypeBidirectional;
        vpic->forward_reference_picture = pic->refs[0]->recon_surface;
        vpic->backward_reference_picture = pic->refs[1]->recon_surface;
        break;
    default:
        av_assert0(0 && "invalid picture type");
    }

    vpic->temporal_reference = ph->temporal_reference;
    vpic->f_code[0][0] = pce->f_code[0][0];
    vpic->f_code[0][1] = pce->f_code[0][1];
    vpic->f_code[1][0] = pce->f_code[1][0];
    vpic->f_code[1][1] = pce->f_code[1][1];

    return 0;
}
