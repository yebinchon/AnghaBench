
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* internal; } ;
struct TYPE_9__ {int thread_count; struct TYPE_9__* progress_cond; struct TYPE_9__* progress_mutex; struct TYPE_9__* entries; int thread; } ;
struct TYPE_8__ {TYPE_2__* thread_ctx; } ;
typedef TYPE_2__ SliceThreadContext ;
typedef TYPE_3__ AVCodecContext ;


 int av_freep (TYPE_2__**) ;
 int avpriv_slicethread_free (int *) ;
 int pthread_cond_destroy (TYPE_2__*) ;
 int pthread_mutex_destroy (TYPE_2__*) ;

void ff_slice_thread_free(AVCodecContext *avctx)
{
    SliceThreadContext *c = avctx->internal->thread_ctx;
    int i;

    avpriv_slicethread_free(&c->thread);

    for (i = 0; i < c->thread_count; i++) {
        pthread_mutex_destroy(&c->progress_mutex[i]);
        pthread_cond_destroy(&c->progress_cond[i]);
    }

    av_freep(&c->entries);
    av_freep(&c->progress_mutex);
    av_freep(&c->progress_cond);
    av_freep(&avctx->internal->thread_ctx);
}
