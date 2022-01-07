
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_7__ {scalar_t__ codec_id; int ff_fmt; int v4l2_fmt; } ;
struct TYPE_6__ {scalar_t__ video_codec_id; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_assert0 (int) ;
 int av_get_pix_fmt_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ,scalar_t__,...) ;
 scalar_t__ av_x_if_null (int ,char*) ;
 int avcodec_get_name (scalar_t__) ;
 int device_init (TYPE_1__*,int*,int*,int ) ;
 TYPE_2__* ff_fmt_conversion_table ;
 int ff_fmt_ff2v4l (int,scalar_t__) ;
 int ff_fmt_v4l2codec (int ) ;

__attribute__((used)) static int device_try_init(AVFormatContext *ctx,
                           enum AVPixelFormat pix_fmt,
                           int *width,
                           int *height,
                           uint32_t *desired_format,
                           enum AVCodecID *codec_id)
{
    int ret, i;

    *desired_format = ff_fmt_ff2v4l(pix_fmt, ctx->video_codec_id);

    if (*desired_format) {
        ret = device_init(ctx, width, height, *desired_format);
        if (ret < 0) {
            *desired_format = 0;
            if (ret != AVERROR(EINVAL))
                return ret;
        }
    }

    if (!*desired_format) {
        for (i = 0; ff_fmt_conversion_table[i].codec_id != AV_CODEC_ID_NONE; i++) {
            if (ctx->video_codec_id == AV_CODEC_ID_NONE ||
                ff_fmt_conversion_table[i].codec_id == ctx->video_codec_id) {
                av_log(ctx, AV_LOG_DEBUG, "Trying to set codec:%s pix_fmt:%s\n",
                       avcodec_get_name(ff_fmt_conversion_table[i].codec_id),
                       (char *)av_x_if_null(av_get_pix_fmt_name(ff_fmt_conversion_table[i].ff_fmt), "none"));

                *desired_format = ff_fmt_conversion_table[i].v4l2_fmt;
                ret = device_init(ctx, width, height, *desired_format);
                if (ret >= 0)
                    break;
                else if (ret != AVERROR(EINVAL))
                    return ret;
                *desired_format = 0;
            }
        }

        if (*desired_format == 0) {
            av_log(ctx, AV_LOG_ERROR, "Cannot find a proper format for "
                   "codec '%s' (id %d), pixel format '%s' (id %d)\n",
                   avcodec_get_name(ctx->video_codec_id), ctx->video_codec_id,
                   (char *)av_x_if_null(av_get_pix_fmt_name(pix_fmt), "none"), pix_fmt);
            ret = AVERROR(EINVAL);
        }
    }

    *codec_id = ff_fmt_v4l2codec(*desired_format);
    if (*codec_id == AV_CODEC_ID_NONE)
        av_assert0(ret == AVERROR(EINVAL));
    return ret;
}
