
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ priv_class; int (* close ) (TYPE_2__*) ;} ;
struct TYPE_16__ {TYPE_5__* codec; scalar_t__ priv_data; TYPE_1__* internal; } ;
struct TYPE_15__ {int is_copy; int die; int async_cond; int async_mutex; int hwaccel_mutex; int buffer_mutex; struct TYPE_15__* threads; struct TYPE_15__* avctx; int hw_frames_ctx; struct TYPE_15__* internal; struct TYPE_15__* slice_offset; struct TYPE_15__* priv_data; struct TYPE_15__* released_buffers; int avpkt; int output_cond; int progress_cond; int input_cond; int progress_mutex; int mutex; int frame; scalar_t__ thread_init; int thread; struct TYPE_15__* prev_thread; } ;
struct TYPE_14__ {TYPE_2__* thread_ctx; } ;
typedef TYPE_2__ PerThreadContext ;
typedef TYPE_2__ FrameThreadContext ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AVCodec ;


 int AV_LOG_ERROR ;
 int av_buffer_unref (int *) ;
 int av_frame_free (int *) ;
 int av_freep (TYPE_2__**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_opt_free (scalar_t__) ;
 int av_packet_unref (int *) ;
 int park_frame_worker_threads (TYPE_2__*,int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int release_delayed_buffers (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ update_context_from_thread (TYPE_2__*,TYPE_2__*,int ) ;

void ff_frame_thread_free(AVCodecContext *avctx, int thread_count)
{
    FrameThreadContext *fctx = avctx->internal->thread_ctx;
    const AVCodec *codec = avctx->codec;
    int i;

    park_frame_worker_threads(fctx, thread_count);

    if (fctx->prev_thread && fctx->prev_thread != fctx->threads)
        if (update_context_from_thread(fctx->threads->avctx, fctx->prev_thread->avctx, 0) < 0) {
            av_log(avctx, AV_LOG_ERROR, "Final thread update failed\n");
            fctx->prev_thread->avctx->internal->is_copy = fctx->threads->avctx->internal->is_copy;
            fctx->threads->avctx->internal->is_copy = 1;
        }

    for (i = 0; i < thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        pthread_mutex_lock(&p->mutex);
        p->die = 1;
        pthread_cond_signal(&p->input_cond);
        pthread_mutex_unlock(&p->mutex);

        if (p->thread_init)
            pthread_join(p->thread, ((void*)0));
        p->thread_init=0;

        if (codec->close && p->avctx)
            codec->close(p->avctx);

        release_delayed_buffers(p);
        av_frame_free(&p->frame);
    }

    for (i = 0; i < thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        pthread_mutex_destroy(&p->mutex);
        pthread_mutex_destroy(&p->progress_mutex);
        pthread_cond_destroy(&p->input_cond);
        pthread_cond_destroy(&p->progress_cond);
        pthread_cond_destroy(&p->output_cond);
        av_packet_unref(&p->avpkt);
        av_freep(&p->released_buffers);

        if (i && p->avctx) {
            av_freep(&p->avctx->priv_data);
            av_freep(&p->avctx->slice_offset);
        }

        if (p->avctx) {
            av_freep(&p->avctx->internal);
            av_buffer_unref(&p->avctx->hw_frames_ctx);
        }

        av_freep(&p->avctx);
    }

    av_freep(&fctx->threads);
    pthread_mutex_destroy(&fctx->buffer_mutex);
    pthread_mutex_destroy(&fctx->hwaccel_mutex);
    pthread_mutex_destroy(&fctx->async_mutex);
    pthread_cond_destroy(&fctx->async_cond);

    av_freep(&avctx->internal->thread_ctx);

    if (avctx->priv_data && avctx->codec && avctx->codec->priv_class)
        av_opt_free(avctx->priv_data);
    avctx->codec = ((void*)0);
}
