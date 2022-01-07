
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {TYPE_10__* f; int ** owner; int progress; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_18__ {int active_thread_type; int debug; TYPE_1__* internal; } ;
struct TYPE_17__ {int buffer_mutex; } ;
struct TYPE_16__ {int num_released_buffers; int * released_buffers; int released_buffers_allocated; TYPE_4__* parent; } ;
struct TYPE_14__ {TYPE_3__* thread_ctx; } ;
struct TYPE_13__ {int * buf; } ;
typedef TYPE_3__ PerThreadContext ;
typedef TYPE_4__ FrameThreadContext ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_DEBUG ;
 int FF_DEBUG_BUFFERS ;
 int FF_THREAD_FRAME ;
 int INT_MAX ;
 scalar_t__ THREAD_SAFE_CALLBACKS (TYPE_5__*) ;
 int av_buffer_unref (int *) ;
 int * av_fast_realloc (int *,int *,int) ;
 int av_frame_move_ref (int *,TYPE_10__*) ;
 int av_frame_unref (TYPE_10__*) ;
 int av_log (TYPE_5__*,int ,char*,TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ff_thread_release_buffer(AVCodecContext *avctx, ThreadFrame *f)
{
    PerThreadContext *p = avctx->internal->thread_ctx;
    FrameThreadContext *fctx;
    AVFrame *dst, *tmp;
    int can_direct_free = !(avctx->active_thread_type & FF_THREAD_FRAME) ||
                          THREAD_SAFE_CALLBACKS(avctx);

    if (!f->f || !f->f->buf[0])
        return;

    if (avctx->debug & FF_DEBUG_BUFFERS)
        av_log(avctx, AV_LOG_DEBUG, "thread_release_buffer called on pic %p\n", f);

    av_buffer_unref(&f->progress);
    f->owner[0] = f->owner[1] = ((void*)0);

    if (can_direct_free) {
        av_frame_unref(f->f);
        return;
    }

    fctx = p->parent;
    pthread_mutex_lock(&fctx->buffer_mutex);

    if (p->num_released_buffers + 1 >= INT_MAX / sizeof(*p->released_buffers))
        goto fail;
    tmp = av_fast_realloc(p->released_buffers, &p->released_buffers_allocated,
                          (p->num_released_buffers + 1) *
                          sizeof(*p->released_buffers));
    if (!tmp)
        goto fail;
    p->released_buffers = tmp;

    dst = &p->released_buffers[p->num_released_buffers];
    av_frame_move_ref(dst, f->f);

    p->num_released_buffers++;

fail:
    pthread_mutex_unlock(&fctx->buffer_mutex);
}
