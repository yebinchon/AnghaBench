
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int err_recognition; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int packet; int request_channel_layout; } ;
struct TYPE_13__ {size_t audio_mode; int ext_audio_mask; scalar_t__ x96_pos; int gb; int gb_in; int ch_mask; scalar_t__ lfe_present; int nchannels; scalar_t__ xch_pos; scalar_t__ xxch_pos; TYPE_4__* avctx; } ;
struct TYPE_12__ {int extension_mask; int xxch_offset; int xbr_offset; int x96_offset; int x96_size; int xbr_size; int xxch_size; } ;
typedef TYPE_1__ DCAExssAsset ;
typedef TYPE_2__ DCACoreDecoder ;
typedef TYPE_3__ DCAContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_EF_EXPLODE ;
 int DCA_CSS_X96 ;
 int DCA_CSS_XCH ;
 int DCA_CSS_XXCH ;
 int DCA_EXSS_X96 ;
 int DCA_EXSS_XBR ;
 int DCA_EXSS_XXCH ;
 int DCA_PACKET_XLL ;
 int DCA_SPEAKER_MASK_LFE1 ;
 int ENOMEM ;
 int * audio_mode_ch_mask ;
 int * ff_dca_channels ;
 int init_get_bits8 (int *,int *,int ) ;
 int parse_x96_frame (TYPE_2__*) ;
 int parse_x96_frame_exss (TYPE_2__*) ;
 int parse_xbr_frame (TYPE_2__*) ;
 int parse_xch_frame (TYPE_2__*) ;
 int parse_xxch_frame (TYPE_2__*) ;
 int skip_bits_long (int *,scalar_t__) ;

int ff_dca_core_parse_exss(DCACoreDecoder *s, uint8_t *data, DCAExssAsset *asset)
{
    AVCodecContext *avctx = s->avctx;
    DCAContext *dca = avctx->priv_data;
    int exss_mask = asset ? asset->extension_mask : 0;
    int ret = 0, ext = 0;


    if (!dca->request_channel_layout) {
        if (exss_mask & DCA_EXSS_XXCH) {
            if ((ret = init_get_bits8(&s->gb, data + asset->xxch_offset, asset->xxch_size)) < 0)
                return ret;
            ret = parse_xxch_frame(s);
            ext = DCA_EXSS_XXCH;
        } else if (s->xxch_pos) {
            s->gb = s->gb_in;
            skip_bits_long(&s->gb, s->xxch_pos);
            ret = parse_xxch_frame(s);
            ext = DCA_CSS_XXCH;
        } else if (s->xch_pos) {
            s->gb = s->gb_in;
            skip_bits_long(&s->gb, s->xch_pos);
            ret = parse_xch_frame(s);
            ext = DCA_CSS_XCH;
        }


        if (ret < 0) {
            if (avctx->err_recognition & AV_EF_EXPLODE)
                return ret;
            s->nchannels = ff_dca_channels[s->audio_mode];
            s->ch_mask = audio_mode_ch_mask[s->audio_mode];
            if (s->lfe_present)
                s->ch_mask |= DCA_SPEAKER_MASK_LFE1;
        } else {
            s->ext_audio_mask |= ext;
        }
    }


    if (exss_mask & DCA_EXSS_XBR) {
        if ((ret = init_get_bits8(&s->gb, data + asset->xbr_offset, asset->xbr_size)) < 0)
            return ret;
        if ((ret = parse_xbr_frame(s)) < 0) {
            if (avctx->err_recognition & AV_EF_EXPLODE)
                return ret;
        } else {
            s->ext_audio_mask |= DCA_EXSS_XBR;
        }
    }


    if (!(dca->packet & DCA_PACKET_XLL)) {
        if (exss_mask & DCA_EXSS_X96) {
            if ((ret = init_get_bits8(&s->gb, data + asset->x96_offset, asset->x96_size)) < 0)
                return ret;
            if ((ret = parse_x96_frame_exss(s)) < 0) {
                if (ret == AVERROR(ENOMEM) || (avctx->err_recognition & AV_EF_EXPLODE))
                    return ret;
            } else {
                s->ext_audio_mask |= DCA_EXSS_X96;
            }
        } else if (s->x96_pos) {
            s->gb = s->gb_in;
            skip_bits_long(&s->gb, s->x96_pos);
            if ((ret = parse_x96_frame(s)) < 0) {
                if (ret == AVERROR(ENOMEM) || (avctx->err_recognition & AV_EF_EXPLODE))
                    return ret;
            } else {
                s->ext_audio_mask |= DCA_CSS_X96;
            }
        }
    }

    return 0;
}
