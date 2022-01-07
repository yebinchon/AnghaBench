
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nb_samples; } ;
struct TYPE_10__ {TYPE_3__* frame; } ;
struct TYPE_9__ {int tail; int allocated; scalar_t__ samples_skipped; int total_samples_tail; int total_frames_tail; int queued; } ;
typedef TYPE_1__ FFFrameQueue ;
typedef TYPE_2__ FFFrameBucket ;
typedef TYPE_3__ AVFrame ;


 int av_assert1 (int ) ;
 TYPE_2__* bucket (TYPE_1__*,int ) ;
 int check_consistency (TYPE_1__*) ;

AVFrame *ff_framequeue_take(FFFrameQueue *fq)
{
    FFFrameBucket *b;

    check_consistency(fq);
    av_assert1(fq->queued);
    b = bucket(fq, 0);
    fq->queued--;
    fq->tail++;
    fq->tail &= fq->allocated - 1;
    fq->total_frames_tail++;
    fq->total_samples_tail += b->frame->nb_samples;
    fq->samples_skipped = 0;
    check_consistency(fq);
    return b->frame;
}
