
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * queue; int first_bucket; scalar_t__ queued; } ;
typedef TYPE_1__ FFFrameQueue ;
typedef int AVFrame ;


 int av_frame_free (int **) ;
 int av_freep (int **) ;
 int * ff_framequeue_take (TYPE_1__*) ;

void ff_framequeue_free(FFFrameQueue *fq)
{
    while (fq->queued) {
        AVFrame *frame = ff_framequeue_take(fq);
        av_frame_free(&frame);
    }
    if (fq->queue != &fq->first_bucket)
        av_freep(&fq->queue);
}
