
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int width; int height; } ;
struct TYPE_12__ {int pixelformat; } ;
struct TYPE_13__ {TYPE_1__ pix_mp; } ;
struct v4l2_selection {TYPE_3__ r; int type; TYPE_2__ fmt; } ;
struct TYPE_15__ {TYPE_5__* context; } ;
typedef TYPE_4__ V4L2m2mPriv ;
struct TYPE_17__ {int buffers; int width; int height; int av_pix_fmt; struct v4l2_selection format; int type; scalar_t__ streamon; } ;
struct TYPE_16__ {int fd; TYPE_6__ output; TYPE_6__ capture; } ;
typedef TYPE_5__ V4L2m2mContext ;
typedef TYPE_6__ V4L2Context ;
struct TYPE_18__ {int coded_width; int coded_height; int pix_fmt; scalar_t__ priv_data; } ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_G_FMT ;
 int VIDIOC_G_SELECTION ;
 int VIDIOC_STREAMON ;
 int VIDIOC_S_SELECTION ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int ff_v4l2_context_init (TYPE_6__* const) ;
 int ff_v4l2_context_set_status (TYPE_6__* const,int ) ;
 int ff_v4l2_format_v4l2_to_avfmt (int ,int ) ;
 int ioctl (int ,int ,struct v4l2_selection*) ;

__attribute__((used)) static int v4l2_try_start(AVCodecContext *avctx)
{
    V4L2m2mContext *s = ((V4L2m2mPriv*)avctx->priv_data)->context;
    V4L2Context *const capture = &s->capture;
    V4L2Context *const output = &s->output;
    struct v4l2_selection selection;
    int ret;


    if (!output->streamon) {
        ret = ff_v4l2_context_set_status(output, VIDIOC_STREAMON);
        if (ret < 0) {
            av_log(avctx, AV_LOG_DEBUG, "VIDIOC_STREAMON on output context\n");
            return ret;
        }
    }

    if (capture->streamon)
        return 0;


    capture->format.type = capture->type;
    ret = ioctl(s->fd, VIDIOC_G_FMT, &capture->format);
    if (ret) {
        av_log(avctx, AV_LOG_WARNING, "VIDIOC_G_FMT ioctl\n");
        return ret;
    }


    avctx->pix_fmt = ff_v4l2_format_v4l2_to_avfmt(capture->format.fmt.pix_mp.pixelformat, AV_CODEC_ID_RAWVIDEO);
    capture->av_pix_fmt = avctx->pix_fmt;


    selection.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    selection.r.height = avctx->coded_height;
    selection.r.width = avctx->coded_width;
    ret = ioctl(s->fd, VIDIOC_S_SELECTION, &selection);
    if (!ret) {
        ret = ioctl(s->fd, VIDIOC_G_SELECTION, &selection);
        if (ret) {
            av_log(avctx, AV_LOG_WARNING, "VIDIOC_G_SELECTION ioctl\n");
        } else {
            av_log(avctx, AV_LOG_DEBUG, "crop output %dx%d\n", selection.r.width, selection.r.height);

            capture->height = selection.r.height;
            capture->width = selection.r.width;
        }
    }


    if (!capture->buffers) {
        ret = ff_v4l2_context_init(capture);
        if (ret) {
            av_log(avctx, AV_LOG_ERROR, "can't request capture buffers\n");
            return AVERROR(ENOMEM);
        }
    }


    ret = ff_v4l2_context_set_status(capture, VIDIOC_STREAMON);
    if (ret) {
        av_log(avctx, AV_LOG_DEBUG, "VIDIOC_STREAMON, on capture context\n");
        return ret;
    }

    return 0;
}
