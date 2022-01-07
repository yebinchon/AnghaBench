
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum AVMatrixEncoding { ____Placeholder_AVMatrixEncoding } AVMatrixEncoding ;
struct TYPE_14__ {int flags; int bit_rate; int profile; TYPE_4__* priv_data; } ;
struct TYPE_10__ {TYPE_2__* assets; } ;
struct TYPE_13__ {scalar_t__ request_channel_layout; int packet; TYPE_1__ exss; } ;
struct TYPE_12__ {scalar_t__ audio_mode; scalar_t__ prim_dmix_type; int ext_audio_mask; int bit_rate; scalar_t__ ch_mask; scalar_t__ request_mask; int ch_remap; scalar_t__ prim_dmix_embedded; TYPE_5__* avctx; } ;
struct TYPE_11__ {int extension_mask; } ;
typedef TYPE_2__ DCAExssAsset ;
typedef TYPE_3__ DCACoreDecoder ;
typedef TYPE_4__ DCAContext ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG_BITEXACT ;
 int AV_MATRIX_ENCODING_DOLBY ;
 int AV_MATRIX_ENCODING_NONE ;
 scalar_t__ DCA_AMODE_MONO ;
 scalar_t__ DCA_AMODE_STEREO_TOTAL ;
 int DCA_CSS_X96 ;
 int DCA_CSS_XCH ;
 int DCA_CSS_XXCH ;
 scalar_t__ DCA_DMIX_TYPE_LoRo ;
 scalar_t__ DCA_DMIX_TYPE_LtRt ;
 int DCA_EXSS_MASK ;
 int DCA_EXSS_XLL ;
 int DCA_PACKET_EXSS ;
 scalar_t__ DCA_SPEAKER_LAYOUT_STEREO ;
 int EINVAL ;
 int FF_PROFILE_DTS ;
 int FF_PROFILE_DTS_96_24 ;
 int FF_PROFILE_DTS_ES ;
 int FF_PROFILE_DTS_HD_HRA ;
 int ff_dca_set_channel_layout (TYPE_5__*,int ,scalar_t__) ;
 int ff_side_data_update_matrix_encoding (int *,int) ;
 int filter_frame_fixed (TYPE_3__*,int *) ;
 int filter_frame_float (TYPE_3__*,int *) ;

int ff_dca_core_filter_frame(DCACoreDecoder *s, AVFrame *frame)
{
    AVCodecContext *avctx = s->avctx;
    DCAContext *dca = avctx->priv_data;
    DCAExssAsset *asset = &dca->exss.assets[0];
    enum AVMatrixEncoding matrix_encoding;
    int ret;


    if (dca->request_channel_layout == DCA_SPEAKER_LAYOUT_STEREO
        && s->audio_mode > DCA_AMODE_MONO && s->prim_dmix_embedded
        && (s->prim_dmix_type == DCA_DMIX_TYPE_LoRo ||
            s->prim_dmix_type == DCA_DMIX_TYPE_LtRt))
        s->request_mask = DCA_SPEAKER_LAYOUT_STEREO;
    else
        s->request_mask = s->ch_mask;
    if (!ff_dca_set_channel_layout(avctx, s->ch_remap, s->request_mask))
        return AVERROR(EINVAL);


    if ((avctx->flags & AV_CODEC_FLAG_BITEXACT) || ((dca->packet & DCA_PACKET_EXSS)
                                                    && (asset->extension_mask & DCA_EXSS_XLL)))
        ret = filter_frame_fixed(s, frame);
    else
        ret = filter_frame_float(s, frame);
    if (ret < 0)
        return ret;


    if (s->ext_audio_mask & DCA_EXSS_MASK)
        avctx->profile = FF_PROFILE_DTS_HD_HRA;
    else if (s->ext_audio_mask & (DCA_CSS_XXCH | DCA_CSS_XCH))
        avctx->profile = FF_PROFILE_DTS_ES;
    else if (s->ext_audio_mask & DCA_CSS_X96)
        avctx->profile = FF_PROFILE_DTS_96_24;
    else
        avctx->profile = FF_PROFILE_DTS;

    if (s->bit_rate > 3 && !(s->ext_audio_mask & DCA_EXSS_MASK))
        avctx->bit_rate = s->bit_rate;
    else
        avctx->bit_rate = 0;

    if (s->audio_mode == DCA_AMODE_STEREO_TOTAL || (s->request_mask != s->ch_mask &&
                                                    s->prim_dmix_type == DCA_DMIX_TYPE_LtRt))
        matrix_encoding = AV_MATRIX_ENCODING_DOLBY;
    else
        matrix_encoding = AV_MATRIX_ENCODING_NONE;
    if ((ret = ff_side_data_update_matrix_encoding(frame, matrix_encoding)) < 0)
        return ret;

    return 0;
}
