
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * frame; } ;
struct TYPE_7__ {size_t queued; } ;
typedef TYPE_1__ FFFrameQueue ;
typedef TYPE_2__ FFFrameBucket ;
typedef int AVFrame ;


 int av_assert1 (int) ;
 TYPE_2__* bucket (TYPE_1__*,size_t) ;
 int check_consistency (TYPE_1__*) ;

AVFrame *ff_framequeue_peek(FFFrameQueue *fq, size_t idx)
{
    FFFrameBucket *b;

    check_consistency(fq);
    av_assert1(idx < fq->queued);
    b = bucket(fq, idx);
    check_consistency(fq);
    return b->frame;
}
