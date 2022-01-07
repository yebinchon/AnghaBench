
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vpx_enc_frame_flags_t ;
struct vpx_image {int range; int * stride; int * planes; } ;
typedef int int64_t ;
struct TYPE_16__ {int sz; int buf; } ;
struct TYPE_17__ {TYPE_1__ twopass_stats; int deadline; int encoder_alpha; scalar_t__ is_alpha; int encoder; struct vpx_image rawimg_alpha; struct vpx_image rawimg; } ;
typedef TYPE_2__ VPxContext ;
struct TYPE_20__ {scalar_t__ codec_id; int flags; int stats_out; int ticks_per_frame; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int value; } ;
struct TYPE_18__ {int color_range; scalar_t__ pict_type; int height; int width; scalar_t__ metadata; int pts; int * linesize; int * data; } ;
typedef int AVPacket ;
typedef int AVFrameSideData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVDictionaryEntry ;
typedef TYPE_5__ AVCodecContext ;




 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 unsigned int AV_BASE64_SIZE (int ) ;
 int AV_CODEC_FLAG_PASS1 ;
 scalar_t__ AV_CODEC_ID_VP8 ;
 int AV_FRAME_DATA_REGIONS_OF_INTEREST ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 scalar_t__ CONFIG_LIBVPX_VP8_ENCODER ;
 int ENOMEM ;
 int VPX_CODEC_OK ;
 int VPX_CR_FULL_RANGE ;
 int VPX_CR_STUDIO_RANGE ;
 int VPX_EFLAG_FORCE_KF ;
 size_t VPX_PLANE_U ;
 size_t VPX_PLANE_V ;
 size_t VPX_PLANE_Y ;
 int av_base64_encode (int ,unsigned int,int ,int ) ;
 TYPE_4__* av_dict_get (scalar_t__,char*,int *,int ) ;
 int * av_frame_get_side_data (TYPE_3__ const*,int ) ;
 int av_log (TYPE_5__*,int ,char*,unsigned int) ;
 int av_malloc (unsigned int) ;
 int log_encoder_error (TYPE_5__*,char*) ;
 int queue_frames (TYPE_5__*,int *) ;
 int realloc_alpha_uv (TYPE_5__*,int ,int ) ;
 int strtoul (int ,int *,int) ;
 int vp8_encode_set_roi (TYPE_5__*,int ,int ,int const*) ;
 int vp9_encode_set_roi (TYPE_5__*,int ,int ,int const*) ;
 int vpx_codec_encode (int *,struct vpx_image*,int ,int ,int ,int ) ;

__attribute__((used)) static int vpx_encode(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *frame, int *got_packet)
{
    VPxContext *ctx = avctx->priv_data;
    struct vpx_image *rawimg = ((void*)0);
    struct vpx_image *rawimg_alpha = ((void*)0);
    int64_t timestamp = 0;
    int res, coded_size;
    vpx_enc_frame_flags_t flags = 0;

    if (frame) {
        const AVFrameSideData *sd = av_frame_get_side_data(frame, AV_FRAME_DATA_REGIONS_OF_INTEREST);
        rawimg = &ctx->rawimg;
        rawimg->planes[VPX_PLANE_Y] = frame->data[0];
        rawimg->planes[VPX_PLANE_U] = frame->data[1];
        rawimg->planes[VPX_PLANE_V] = frame->data[2];
        rawimg->stride[VPX_PLANE_Y] = frame->linesize[0];
        rawimg->stride[VPX_PLANE_U] = frame->linesize[1];
        rawimg->stride[VPX_PLANE_V] = frame->linesize[2];
        if (ctx->is_alpha) {
            rawimg_alpha = &ctx->rawimg_alpha;
            res = realloc_alpha_uv(avctx, frame->width, frame->height);
            if (res < 0)
                return res;
            rawimg_alpha->planes[VPX_PLANE_Y] = frame->data[3];
            rawimg_alpha->stride[VPX_PLANE_Y] = frame->linesize[3];
        }
        timestamp = frame->pts;
        if (frame->pict_type == AV_PICTURE_TYPE_I)
            flags |= VPX_EFLAG_FORCE_KF;
        if (CONFIG_LIBVPX_VP8_ENCODER && avctx->codec_id == AV_CODEC_ID_VP8 && frame->metadata) {
            AVDictionaryEntry* en = av_dict_get(frame->metadata, "vp8-flags", ((void*)0), 0);
            if (en) {
                flags |= strtoul(en->value, ((void*)0), 10);
            }
        }

        if (sd) {
            if (avctx->codec_id == AV_CODEC_ID_VP8) {
                vp8_encode_set_roi(avctx, frame->width, frame->height, sd);
            } else {
                vp9_encode_set_roi(avctx, frame->width, frame->height, sd);
            }
        }
    }

    res = vpx_codec_encode(&ctx->encoder, rawimg, timestamp,
                           avctx->ticks_per_frame, flags, ctx->deadline);
    if (res != VPX_CODEC_OK) {
        log_encoder_error(avctx, "Error encoding frame");
        return AVERROR_INVALIDDATA;
    }

    if (ctx->is_alpha) {
        res = vpx_codec_encode(&ctx->encoder_alpha, rawimg_alpha, timestamp,
                               avctx->ticks_per_frame, flags, ctx->deadline);
        if (res != VPX_CODEC_OK) {
            log_encoder_error(avctx, "Error encoding alpha frame");
            return AVERROR_INVALIDDATA;
        }
    }

    coded_size = queue_frames(avctx, pkt);

    if (!frame && avctx->flags & AV_CODEC_FLAG_PASS1) {
        unsigned int b64_size = AV_BASE64_SIZE(ctx->twopass_stats.sz);

        avctx->stats_out = av_malloc(b64_size);
        if (!avctx->stats_out) {
            av_log(avctx, AV_LOG_ERROR, "Stat buffer alloc (%d bytes) failed\n",
                   b64_size);
            return AVERROR(ENOMEM);
        }
        av_base64_encode(avctx->stats_out, b64_size, ctx->twopass_stats.buf,
                         ctx->twopass_stats.sz);
    }

    *got_packet = !!coded_size;
    return 0;
}
