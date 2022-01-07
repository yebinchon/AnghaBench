
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reinit; scalar_t__ draining; int capture; int refsync; int refcount; void* priv; } ;
typedef TYPE_1__ V4L2m2mContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ EINTR ;
 int VIDIOC_STREAMOFF ;
 scalar_t__ atomic_load (int *) ;
 int av_log (void*,int ,char*) ;
 scalar_t__ errno ;
 int ff_v4l2_context_get_format (int *,int ) ;
 int ff_v4l2_context_release (int *) ;
 int ff_v4l2_context_set_format (int *) ;
 int ff_v4l2_context_set_status (int *,int ) ;
 int sem_wait (int *) ;

int ff_v4l2_m2m_codec_reinit(V4L2m2mContext* s)
{
    void *log_ctx = s->priv;
    int ret;

    av_log(log_ctx, AV_LOG_DEBUG, "reinit context\n");


    ret = ff_v4l2_context_set_status(&s->capture, VIDIOC_STREAMOFF);
    if (ret)
        av_log(log_ctx, AV_LOG_ERROR, "capture VIDIOC_STREAMOFF\n");





    av_log(log_ctx, AV_LOG_DEBUG, "waiting for user to release AVBufferRefs\n");
    if (atomic_load(&s->refcount))
        while(sem_wait(&s->refsync) == -1 && errno == EINTR);

    ff_v4l2_context_release(&s->capture);


    ret = ff_v4l2_context_get_format(&s->capture, 0);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "query the new capture format\n");
        return ret;
    }


    ret = ff_v4l2_context_set_format(&s->capture);
    if (ret) {
        av_log(log_ctx, AV_LOG_ERROR, "setting capture format\n");
        return ret;
    }


    s->draining = 0;
    s->reinit = 0;

    return 0;
}
