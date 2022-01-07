
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int capture; TYPE_1__* avctx; int output; scalar_t__ reinit; scalar_t__ draining; int refsync; int refcount; int devname; } ;
typedef TYPE_2__ V4L2m2mContext ;
struct TYPE_4__ {int codec; } ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ EINTR ;
 int VIDIOC_STREAMOFF ;
 scalar_t__ atomic_load (int *) ;
 int av_codec_is_decoder (int ) ;
 int av_log (void*,int ,char*,...) ;
 scalar_t__ errno ;
 int ff_v4l2_context_get_format (int *,int ) ;
 int ff_v4l2_context_init (int *) ;
 int ff_v4l2_context_release (int *) ;
 int ff_v4l2_context_set_format (int *) ;
 int ff_v4l2_context_set_status (int *,int ) ;
 int sem_wait (int *) ;

int ff_v4l2_m2m_codec_full_reinit(V4L2m2mContext *s)
{
    void *log_ctx = s->avctx;
    int ret;

    av_log(log_ctx, AV_LOG_DEBUG, "%s full reinit\n", s->devname);


    if (atomic_load(&s->refcount))
        while(sem_wait(&s->refsync) == -1 && errno == EINTR);

    ret = ff_v4l2_context_set_status(&s->output, VIDIOC_STREAMOFF);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "output VIDIOC_STREAMOFF\n");
        goto error;
    }

    ret = ff_v4l2_context_set_status(&s->capture, VIDIOC_STREAMOFF);
    if (ret) {
            av_log(log_ctx, AV_LOG_ERROR, "capture VIDIOC_STREAMOFF\n");
            goto error;
    }


    ff_v4l2_context_release(&s->output);
    ff_v4l2_context_release(&s->capture);


    s->draining = 0;
    s->reinit = 0;

    ret = ff_v4l2_context_get_format(&s->output, 0);
    if (ret) {
        av_log(log_ctx, AV_LOG_DEBUG, "v4l2 output format not supported\n");
        goto error;
    }

    ret = ff_v4l2_context_get_format(&s->capture, 0);
    if (ret) {
        av_log(log_ctx, AV_LOG_DEBUG, "v4l2 capture format not supported\n");
        goto error;
    }

    ret = ff_v4l2_context_set_format(&s->output);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "can't set v4l2 output format\n");
        goto error;
    }

    ret = ff_v4l2_context_set_format(&s->capture);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "can't to set v4l2 capture format\n");
        goto error;
    }

    ret = ff_v4l2_context_init(&s->output);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "no v4l2 output context's buffers\n");
        goto error;
    }


    if (!s->avctx || !av_codec_is_decoder(s->avctx->codec)) {
        ret = ff_v4l2_context_init(&s->capture);
        if (ret) {
            av_log(log_ctx, AV_LOG_ERROR, "no v4l2 capture context's buffers\n");
            goto error;
        }
    }

    return 0;

error:
    return ret;
}
