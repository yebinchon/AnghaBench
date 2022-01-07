
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct dc1394_frame_rate {scalar_t__ frame_rate; } ;
struct dc1394_frame_format {int width; int pix_fmt; int height; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_13__ {scalar_t__ frame_rate; int size; int stream_index; scalar_t__ current_frame; int framerate; int video_size; int pixel_format; } ;
typedef TYPE_2__ dc1394_data ;
struct TYPE_16__ {TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__ num; int den; } ;
struct TYPE_14__ {TYPE_1__* codecpar; int index; TYPE_4__ avg_frame_rate; } ;
struct TYPE_12__ {int width; int height; int format; void* bit_rate; int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_NONE ;
 int EINVAL ;
 int ENOMEM ;
 int av_get_pix_fmt (int ) ;
 int av_get_pix_fmt_name (int) ;
 int av_image_get_buffer_size (int,int,int,int) ;
 int av_log (TYPE_5__*,int ,char*,int ,...) ;
 int av_parse_video_rate (TYPE_4__*,int ) ;
 int av_parse_video_size (int*,int*,int ) ;
 void* av_rescale (int,scalar_t__,int) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 struct dc1394_frame_format* dc1394_frame_formats ;
 struct dc1394_frame_rate* dc1394_frame_rates ;

__attribute__((used)) static inline int dc1394_read_common(AVFormatContext *c,
                                     const struct dc1394_frame_format **select_fmt, const struct dc1394_frame_rate **select_fps)
{
    dc1394_data* dc1394 = c->priv_data;
    AVStream* vst;
    const struct dc1394_frame_format *fmt;
    const struct dc1394_frame_rate *fps;
    enum AVPixelFormat pix_fmt;
    int width, height;
    AVRational framerate;
    int ret = 0;

    if ((pix_fmt = av_get_pix_fmt(dc1394->pixel_format)) == AV_PIX_FMT_NONE) {
        av_log(c, AV_LOG_ERROR, "No such pixel format: %s.\n", dc1394->pixel_format);
        ret = AVERROR(EINVAL);
        goto out;
    }

    if ((ret = av_parse_video_size(&width, &height, dc1394->video_size)) < 0) {
        av_log(c, AV_LOG_ERROR, "Could not parse video size '%s'.\n", dc1394->video_size);
        goto out;
    }
    if ((ret = av_parse_video_rate(&framerate, dc1394->framerate)) < 0) {
        av_log(c, AV_LOG_ERROR, "Could not parse framerate '%s'.\n", dc1394->framerate);
        goto out;
    }
    dc1394->frame_rate = av_rescale(1000, framerate.num, framerate.den);

    for (fmt = dc1394_frame_formats; fmt->width; fmt++)
         if (fmt->pix_fmt == pix_fmt && fmt->width == width && fmt->height == height)
             break;

    for (fps = dc1394_frame_rates; fps->frame_rate; fps++)
         if (fps->frame_rate == dc1394->frame_rate)
             break;

    if (!fps->frame_rate || !fmt->width) {
        av_log(c, AV_LOG_ERROR, "Can't find matching camera format for %s, %dx%d@%d:1000fps\n", av_get_pix_fmt_name(pix_fmt),
                                                                                                width, height, dc1394->frame_rate);
        ret = AVERROR(EINVAL);
        goto out;
    }


    vst = avformat_new_stream(c, ((void*)0));
    if (!vst) {
        ret = AVERROR(ENOMEM);
        goto out;
    }
    avpriv_set_pts_info(vst, 64, 1, 1000);
    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    vst->codecpar->width = fmt->width;
    vst->codecpar->height = fmt->height;
    vst->codecpar->format = fmt->pix_fmt;
    vst->avg_frame_rate = framerate;

    dc1394->current_frame = 0;
    dc1394->stream_index = vst->index;
    dc1394->size = av_image_get_buffer_size(fmt->pix_fmt,
                                            fmt->width, fmt->height, 1);

    vst->codecpar->bit_rate = av_rescale(dc1394->size * 8,
                                         fps->frame_rate, 1000);
    *select_fps = fps;
    *select_fmt = fmt;
out:
    return ret;
}
