
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ codec_id; int codec_type; int width; int pix_fmt; int channels; int sample_rate; int sample_fmt; int frame_size; } ;
struct TYPE_12__ {int num; } ;
struct TYPE_15__ {int codec_info_nb_frames; TYPE_5__* codecpar; TYPE_3__ sample_aspect_ratio; TYPE_2__* info; int nb_decoded_frames; TYPE_1__* internal; } ;
struct TYPE_13__ {int num; } ;
struct TYPE_14__ {TYPE_4__ sample_aspect_ratio; int codec_id; } ;
struct TYPE_11__ {int found_decoder; } ;
struct TYPE_10__ {TYPE_7__* avctx; } ;
typedef TYPE_6__ AVStream ;
typedef TYPE_7__ AVCodecContext ;






 scalar_t__ AV_CODEC_ID_DTS ;
 scalar_t__ AV_CODEC_ID_HDMV_PGS_SUBTITLE ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_CODEC_ID_RV30 ;
 int AV_CODEC_ID_RV40 ;
 int AV_PIX_FMT_NONE ;
 int AV_SAMPLE_FMT_NONE ;
 int FAIL (char*) ;
 int determinable_frame_size (TYPE_7__*) ;

__attribute__((used)) static int has_codec_parameters(AVStream *st, const char **errmsg_ptr)
{
    AVCodecContext *avctx = st->internal->avctx;







    if ( avctx->codec_id == AV_CODEC_ID_NONE
        && avctx->codec_type != 130)
        do { if (errmsg_ptr) *errmsg_ptr = "unknown codec"; return 0; } while (0);
    switch (avctx->codec_type) {
    case 131:
        if (!avctx->frame_size && determinable_frame_size(avctx))
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified frame size"; return 0; } while (0);
        if (st->info->found_decoder >= 0 &&
            avctx->sample_fmt == AV_SAMPLE_FMT_NONE)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified sample format"; return 0; } while (0);
        if (!avctx->sample_rate)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified sample rate"; return 0; } while (0);
        if (!avctx->channels)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified number of channels"; return 0; } while (0);
        if (st->info->found_decoder >= 0 && !st->nb_decoded_frames && avctx->codec_id == AV_CODEC_ID_DTS)
            do { if (errmsg_ptr) *errmsg_ptr = "no decodable DTS frames"; return 0; } while (0);
        break;
    case 128:
        if (!avctx->width)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified size"; return 0; } while (0);
        if (st->info->found_decoder >= 0 && avctx->pix_fmt == AV_PIX_FMT_NONE)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified pixel format"; return 0; } while (0);
        if (st->codecpar->codec_id == AV_CODEC_ID_RV30 || st->codecpar->codec_id == AV_CODEC_ID_RV40)
            if (!st->sample_aspect_ratio.num && !st->codecpar->sample_aspect_ratio.num && !st->codec_info_nb_frames)
                do { if (errmsg_ptr) *errmsg_ptr = "no frame in rv30/40 and no sar"; return 0; } while (0);
        break;
    case 129:
        if (avctx->codec_id == AV_CODEC_ID_HDMV_PGS_SUBTITLE && !avctx->width)
            do { if (errmsg_ptr) *errmsg_ptr = "unspecified size"; return 0; } while (0);
        break;
    case 130:
        if (avctx->codec_id == AV_CODEC_ID_NONE) return 1;
    }

    return 1;
}
