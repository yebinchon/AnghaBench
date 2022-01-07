
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;
struct TYPE_7__ {int active_thread_type; int thread_count; TYPE_1__* internal; } ;
struct TYPE_6__ {int thread_count; int entries_count; int * progress_cond; int * progress_mutex; int * entries; } ;
struct TYPE_5__ {TYPE_2__* thread_ctx; } ;
typedef TYPE_2__ SliceThreadContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FF_THREAD_SLICE ;
 int av_assert0 (int) ;
 int av_freep (int **) ;
 void* av_malloc_array (int,int) ;
 int * av_mallocz_array (int,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

int ff_alloc_entries(AVCodecContext *avctx, int count)
{
    int i;

    if (avctx->active_thread_type & FF_THREAD_SLICE) {
        SliceThreadContext *p = avctx->internal->thread_ctx;

        if (p->entries) {
            av_assert0(p->thread_count == avctx->thread_count);
            av_freep(&p->entries);
        }

        p->thread_count = avctx->thread_count;
        p->entries = av_mallocz_array(count, sizeof(int));

        if (!p->progress_mutex) {
            p->progress_mutex = av_malloc_array(p->thread_count, sizeof(pthread_mutex_t));
            p->progress_cond = av_malloc_array(p->thread_count, sizeof(pthread_cond_t));
        }

        if (!p->entries || !p->progress_mutex || !p->progress_cond) {
            av_freep(&p->entries);
            av_freep(&p->progress_mutex);
            av_freep(&p->progress_cond);
            return AVERROR(ENOMEM);
        }
        p->entries_count = count;

        for (i = 0; i < p->thread_count; i++) {
            pthread_mutex_init(&p->progress_mutex[i], ((void*)0));
            pthread_cond_init(&p->progress_cond[i], ((void*)0));
        }
    }

    return 0;
}
