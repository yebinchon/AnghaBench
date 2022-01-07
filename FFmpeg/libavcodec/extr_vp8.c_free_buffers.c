
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * macroblocks; TYPE_3__* top_border; TYPE_3__* top_nnz; TYPE_3__* intra4x4_pred_mode_top; TYPE_3__* macroblocks_base; TYPE_3__* thread_data; } ;
typedef TYPE_1__ VP8Context ;
struct TYPE_5__ {struct TYPE_5__* filter_strength; int lock; int cond; } ;


 int MAX_THREADS ;
 int av_freep (TYPE_3__**) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void free_buffers(VP8Context *s)
{
    int i;
    if (s->thread_data)
        for (i = 0; i < MAX_THREADS; i++) {




            av_freep(&s->thread_data[i].filter_strength);
        }
    av_freep(&s->thread_data);
    av_freep(&s->macroblocks_base);
    av_freep(&s->intra4x4_pred_mode_top);
    av_freep(&s->top_nnz);
    av_freep(&s->top_border);

    s->macroblocks = ((void*)0);
}
