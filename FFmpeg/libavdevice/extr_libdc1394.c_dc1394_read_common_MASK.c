#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct dc1394_frame_rate {scalar_t__ frame_rate; } ;
struct dc1394_frame_format {int width; int pix_fmt; int height; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_13__ {scalar_t__ frame_rate; int size; int /*<<< orphan*/  stream_index; scalar_t__ current_frame; int /*<<< orphan*/  framerate; int /*<<< orphan*/  video_size; int /*<<< orphan*/  pixel_format; } ;
typedef  TYPE_2__ dc1394_data ;
struct TYPE_16__ {TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__ num; int den; } ;
struct TYPE_14__ {TYPE_1__* codecpar; int /*<<< orphan*/  index; TYPE_4__ avg_frame_rate; } ;
struct TYPE_12__ {int width; int height; int format; void* bit_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,int*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,scalar_t__,int) ; 
 TYPE_3__* FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int) ; 
 struct dc1394_frame_format* dc1394_frame_formats ; 
 struct dc1394_frame_rate* dc1394_frame_rates ; 

__attribute__((used)) static inline int FUNC10(AVFormatContext *c,
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

    if ((pix_fmt = FUNC1(dc1394->pixel_format)) == AV_PIX_FMT_NONE) {
        FUNC4(c, AV_LOG_ERROR, "No such pixel format: %s.\n", dc1394->pixel_format);
        ret = FUNC0(EINVAL);
        goto out;
    }

    if ((ret = FUNC6(&width, &height, dc1394->video_size)) < 0) {
        FUNC4(c, AV_LOG_ERROR, "Could not parse video size '%s'.\n", dc1394->video_size);
        goto out;
    }
    if ((ret = FUNC5(&framerate, dc1394->framerate)) < 0) {
        FUNC4(c, AV_LOG_ERROR, "Could not parse framerate '%s'.\n", dc1394->framerate);
        goto out;
    }
    dc1394->frame_rate = FUNC7(1000, framerate.num, framerate.den);

    for (fmt = dc1394_frame_formats; fmt->width; fmt++)
         if (fmt->pix_fmt == pix_fmt && fmt->width == width && fmt->height == height)
             break;

    for (fps = dc1394_frame_rates; fps->frame_rate; fps++)
         if (fps->frame_rate == dc1394->frame_rate)
             break;

    if (!fps->frame_rate || !fmt->width) {
        FUNC4(c, AV_LOG_ERROR, "Can't find matching camera format for %s, %dx%d@%d:1000fps\n", FUNC2(pix_fmt),
                                                                                                width, height, dc1394->frame_rate);
        ret = FUNC0(EINVAL);
        goto out;
    }

    /* create a video stream */
    vst = FUNC8(c, NULL);
    if (!vst) {
        ret = FUNC0(ENOMEM);
        goto out;
    }
    FUNC9(vst, 64, 1, 1000);
    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    vst->codecpar->width = fmt->width;
    vst->codecpar->height = fmt->height;
    vst->codecpar->format = fmt->pix_fmt;
    vst->avg_frame_rate = framerate;

    dc1394->current_frame = 0;
    dc1394->stream_index = vst->index;
    dc1394->size = FUNC3(fmt->pix_fmt,
                                            fmt->width, fmt->height, 1);

    vst->codecpar->bit_rate = FUNC7(dc1394->size * 8,
                                         fps->frame_rate, 1000);
    *select_fps = fps;
    *select_fmt = fmt;
out:
    return ret;
}