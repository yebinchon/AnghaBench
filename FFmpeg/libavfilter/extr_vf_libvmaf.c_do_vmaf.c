
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int frame_set; int lock; int cond; int gmain; int gref; scalar_t__ error; } ;
typedef TYPE_1__ LIBVMAFContext ;
typedef TYPE_2__ FFFrameSync ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_frame_ref (int ,int *) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_filter_frame (int ,int *) ;
 int ff_framesync_dualinput_get (TYPE_2__*,int **,int **) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int do_vmaf(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    LIBVMAFContext *s = ctx->priv;
    AVFrame *master, *ref;
    int ret;

    ret = ff_framesync_dualinput_get(fs, &master, &ref);
    if (ret < 0)
        return ret;
    if (!ref)
        return ff_filter_frame(ctx->outputs[0], master);

    pthread_mutex_lock(&s->lock);

    while (s->frame_set && !s->error) {
        pthread_cond_wait(&s->cond, &s->lock);
    }

    if (s->error) {
        av_log(ctx, AV_LOG_ERROR,
               "libvmaf encountered an error, check log for details\n");
        pthread_mutex_unlock(&s->lock);
        return AVERROR(EINVAL);
    }

    av_frame_ref(s->gref, ref);
    av_frame_ref(s->gmain, master);

    s->frame_set = 1;

    pthread_cond_signal(&s->cond);
    pthread_mutex_unlock(&s->lock);

    return ff_filter_frame(ctx->outputs[0], master);
}
