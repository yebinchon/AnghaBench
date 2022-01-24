#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct TYPE_12__ {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_13__ {TYPE_1__ pix_mp; } ;
struct v4l2_selection {TYPE_3__ r; int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
struct TYPE_15__ {TYPE_5__* context; } ;
typedef  TYPE_4__ V4L2m2mPriv ;
struct TYPE_17__ {int /*<<< orphan*/  buffers; int /*<<< orphan*/  width; int /*<<< orphan*/  height; int /*<<< orphan*/  av_pix_fmt; struct v4l2_selection format; int /*<<< orphan*/  type; scalar_t__ streamon; } ;
struct TYPE_16__ {int /*<<< orphan*/  fd; TYPE_6__ output; TYPE_6__ capture; } ;
typedef  TYPE_5__ V4L2m2mContext ;
typedef  TYPE_6__ V4L2Context ;
struct TYPE_18__ {int /*<<< orphan*/  coded_width; int /*<<< orphan*/  coded_height; int /*<<< orphan*/  pix_fmt; scalar_t__ priv_data; } ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_G_FMT ; 
 int /*<<< orphan*/  VIDIOC_G_SELECTION ; 
 int /*<<< orphan*/  VIDIOC_STREAMON ; 
 int /*<<< orphan*/  VIDIOC_S_SELECTION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_6__* const) ; 
 int FUNC3 (TYPE_6__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_selection*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx)
{
    V4L2m2mContext *s = ((V4L2m2mPriv*)avctx->priv_data)->context;
    V4L2Context *const capture = &s->capture;
    V4L2Context *const output = &s->output;
    struct v4l2_selection selection;
    int ret;

    /* 1. start the output process */
    if (!output->streamon) {
        ret = FUNC3(output, VIDIOC_STREAMON);
        if (ret < 0) {
            FUNC1(avctx, AV_LOG_DEBUG, "VIDIOC_STREAMON on output context\n");
            return ret;
        }
    }

    if (capture->streamon)
        return 0;

    /* 2. get the capture format */
    capture->format.type = capture->type;
    ret = FUNC5(s->fd, VIDIOC_G_FMT, &capture->format);
    if (ret) {
        FUNC1(avctx, AV_LOG_WARNING, "VIDIOC_G_FMT ioctl\n");
        return ret;
    }

    /* 2.1 update the AVCodecContext */
    avctx->pix_fmt = FUNC4(capture->format.fmt.pix_mp.pixelformat, AV_CODEC_ID_RAWVIDEO);
    capture->av_pix_fmt = avctx->pix_fmt;

    /* 3. set the crop parameters */
    selection.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    selection.r.height = avctx->coded_height;
    selection.r.width = avctx->coded_width;
    ret = FUNC5(s->fd, VIDIOC_S_SELECTION, &selection);
    if (!ret) {
        ret = FUNC5(s->fd, VIDIOC_G_SELECTION, &selection);
        if (ret) {
            FUNC1(avctx, AV_LOG_WARNING, "VIDIOC_G_SELECTION ioctl\n");
        } else {
            FUNC1(avctx, AV_LOG_DEBUG, "crop output %dx%d\n", selection.r.width, selection.r.height);
            /* update the size of the resulting frame */
            capture->height = selection.r.height;
            capture->width  = selection.r.width;
        }
    }

    /* 4. init the capture context now that we have the capture format */
    if (!capture->buffers) {
        ret = FUNC2(capture);
        if (ret) {
            FUNC1(avctx, AV_LOG_ERROR, "can't request capture buffers\n");
            return FUNC0(ENOMEM);
        }
    }

    /* 5. start the capture process */
    ret = FUNC3(capture, VIDIOC_STREAMON);
    if (ret) {
        FUNC1(avctx, AV_LOG_DEBUG, "VIDIOC_STREAMON, on capture context\n");
        return ret;
    }

    return 0;
}