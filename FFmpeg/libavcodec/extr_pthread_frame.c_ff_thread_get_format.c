
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_9__ {int active_thread_type; scalar_t__ get_format; scalar_t__ thread_safe_callbacks; TYPE_1__* internal; } ;
struct TYPE_8__ {int const* available_formats; int result_format; int progress_mutex; int progress_cond; int state; } ;
struct TYPE_7__ {TYPE_2__* thread_ctx; } ;
typedef TYPE_2__ PerThreadContext ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int FF_THREAD_FRAME ;
 int STATE_GET_FORMAT ;
 scalar_t__ STATE_SETTING_UP ;
 scalar_t__ atomic_load (int *) ;
 int atomic_store (int *,int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__ avcodec_default_get_format ;
 int ff_get_format (TYPE_3__*,int const*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

enum AVPixelFormat ff_thread_get_format(AVCodecContext *avctx, const enum AVPixelFormat *fmt)
{
    enum AVPixelFormat res;
    PerThreadContext *p = avctx->internal->thread_ctx;
    if (!(avctx->active_thread_type & FF_THREAD_FRAME) || avctx->thread_safe_callbacks ||
        avctx->get_format == avcodec_default_get_format)
        return ff_get_format(avctx, fmt);
    if (atomic_load(&p->state) != STATE_SETTING_UP) {
        av_log(avctx, AV_LOG_ERROR, "get_format() cannot be called after ff_thread_finish_setup()\n");
        return -1;
    }
    pthread_mutex_lock(&p->progress_mutex);
    p->available_formats = fmt;
    atomic_store(&p->state, STATE_GET_FORMAT);
    pthread_cond_broadcast(&p->progress_cond);

    while (atomic_load(&p->state) != STATE_SETTING_UP)
        pthread_cond_wait(&p->progress_cond, &p->progress_mutex);

    res = p->result_format;

    pthread_mutex_unlock(&p->progress_mutex);

    return res;
}
