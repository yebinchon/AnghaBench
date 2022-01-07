
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* context; } ;
typedef TYPE_1__ V4L2m2mPriv ;
struct TYPE_11__ {int streamon; } ;
struct TYPE_10__ {scalar_t__ draining; TYPE_3__ output; TYPE_3__ capture; } ;
typedef TYPE_2__ V4L2m2mContext ;
typedef TYPE_3__ V4L2Context ;
struct TYPE_12__ {scalar_t__ priv_data; } ;
typedef int AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int VIDIOC_STREAMON ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_v4l2_context_dequeue_packet (TYPE_3__* const,int *) ;
 int ff_v4l2_context_set_status (TYPE_3__* const,int ) ;

__attribute__((used)) static int v4l2_receive_packet(AVCodecContext *avctx, AVPacket *avpkt)
{
    V4L2m2mContext *s = ((V4L2m2mPriv*)avctx->priv_data)->context;
    V4L2Context *const capture = &s->capture;
    V4L2Context *const output = &s->output;
    int ret;

    if (s->draining)
        goto dequeue;

    if (!output->streamon) {
        ret = ff_v4l2_context_set_status(output, VIDIOC_STREAMON);
        if (ret) {
            av_log(avctx, AV_LOG_ERROR, "VIDIOC_STREAMON failed on output context\n");
            return ret;
        }
    }

    if (!capture->streamon) {
        ret = ff_v4l2_context_set_status(capture, VIDIOC_STREAMON);
        if (ret) {
            av_log(avctx, AV_LOG_ERROR, "VIDIOC_STREAMON failed on capture context\n");
            return ret;
        }
    }

dequeue:
    return ff_v4l2_context_dequeue_packet(capture, avpkt);
}
