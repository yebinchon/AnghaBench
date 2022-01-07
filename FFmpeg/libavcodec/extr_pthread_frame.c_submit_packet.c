
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int debug; scalar_t__ get_format; scalar_t__ get_buffer2; int thread_safe_callbacks; TYPE_4__* codec; } ;
struct TYPE_18__ {int capabilities; } ;
struct TYPE_17__ {int size; } ;
struct TYPE_16__ {int next_decoding; TYPE_1__* prev_thread; } ;
struct TYPE_15__ {int progress_mutex; int progress_cond; int state; int available_formats; TYPE_5__* avctx; int result_format; int requested_flags; int requested_frame; int result; int mutex; int input_cond; int avpkt; int debug_threads; TYPE_2__* parent; } ;
typedef TYPE_1__ PerThreadContext ;
typedef TYPE_2__ FrameThreadContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVCodecContext ;
typedef TYPE_4__ AVCodec ;


 int AV_CODEC_CAP_DELAY ;
 int AV_LOG_ERROR ;
 int FF_DEBUG_THREADS ;


 scalar_t__ STATE_INPUT_READY ;
 scalar_t__ STATE_SETTING_UP ;
 scalar_t__ STATE_SETUP_FINISHED ;
 scalar_t__ atomic_load (int *) ;
 int atomic_load_explicit (int *,int ) ;
 int atomic_store (int *,scalar_t__) ;
 int atomic_store_explicit (int *,int,int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int av_packet_ref (int *,TYPE_3__*) ;
 int av_packet_unref (int *) ;
 scalar_t__ avcodec_default_get_buffer2 ;
 scalar_t__ avcodec_default_get_format ;
 int ff_get_buffer (TYPE_5__*,int ,int ) ;
 int ff_get_format (TYPE_5__*,int ) ;
 int memory_order_acquire ;
 int memory_order_relaxed ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int release_delayed_buffers (TYPE_1__*) ;
 int update_context_from_thread (TYPE_5__*,TYPE_5__*,int ) ;
 int update_context_from_user (TYPE_5__*,int *) ;

__attribute__((used)) static int submit_packet(PerThreadContext *p, AVCodecContext *user_avctx,
                         AVPacket *avpkt)
{
    FrameThreadContext *fctx = p->parent;
    PerThreadContext *prev_thread = fctx->prev_thread;
    const AVCodec *codec = p->avctx->codec;
    int ret;

    if (!avpkt->size && !(codec->capabilities & AV_CODEC_CAP_DELAY))
        return 0;

    pthread_mutex_lock(&p->mutex);

    ret = update_context_from_user(p->avctx, user_avctx);
    if (ret) {
        pthread_mutex_unlock(&p->mutex);
        return ret;
    }
    atomic_store_explicit(&p->debug_threads,
                          (p->avctx->debug & FF_DEBUG_THREADS) != 0,
                          memory_order_relaxed);

    release_delayed_buffers(p);

    if (prev_thread) {
        int err;
        if (atomic_load(&prev_thread->state) == STATE_SETTING_UP) {
            pthread_mutex_lock(&prev_thread->progress_mutex);
            while (atomic_load(&prev_thread->state) == STATE_SETTING_UP)
                pthread_cond_wait(&prev_thread->progress_cond, &prev_thread->progress_mutex);
            pthread_mutex_unlock(&prev_thread->progress_mutex);
        }

        err = update_context_from_thread(p->avctx, prev_thread->avctx, 0);
        if (err) {
            pthread_mutex_unlock(&p->mutex);
            return err;
        }
    }

    av_packet_unref(&p->avpkt);
    ret = av_packet_ref(&p->avpkt, avpkt);
    if (ret < 0) {
        pthread_mutex_unlock(&p->mutex);
        av_log(p->avctx, AV_LOG_ERROR, "av_packet_ref() failed in submit_packet()\n");
        return ret;
    }

    atomic_store(&p->state, STATE_SETTING_UP);
    pthread_cond_signal(&p->input_cond);
    pthread_mutex_unlock(&p->mutex);







    if (!p->avctx->thread_safe_callbacks && (
         p->avctx->get_format != avcodec_default_get_format ||
         p->avctx->get_buffer2 != avcodec_default_get_buffer2)) {
        while (atomic_load(&p->state) != STATE_SETUP_FINISHED && atomic_load(&p->state) != STATE_INPUT_READY) {
            int call_done = 1;
            pthread_mutex_lock(&p->progress_mutex);
            while (atomic_load(&p->state) == STATE_SETTING_UP)
                pthread_cond_wait(&p->progress_cond, &p->progress_mutex);

            switch (atomic_load_explicit(&p->state, memory_order_acquire)) {
            case 129:
                p->result = ff_get_buffer(p->avctx, p->requested_frame, p->requested_flags);
                break;
            case 128:
                p->result_format = ff_get_format(p->avctx, p->available_formats);
                break;
            default:
                call_done = 0;
                break;
            }
            if (call_done) {
                atomic_store(&p->state, STATE_SETTING_UP);
                pthread_cond_signal(&p->progress_cond);
            }
            pthread_mutex_unlock(&p->progress_mutex);
        }
    }

    fctx->prev_thread = p;
    fctx->next_decoding++;

    return 0;
}
