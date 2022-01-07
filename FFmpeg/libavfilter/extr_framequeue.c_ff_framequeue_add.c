
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ nb_samples; } ;
struct TYPE_14__ {TYPE_3__* frame; } ;
struct TYPE_13__ {int queued; int allocated; int tail; int total_samples_head; int total_frames_head; TYPE_2__* queue; } ;
typedef TYPE_1__ FFFrameQueue ;
typedef TYPE_2__ FFFrameBucket ;
typedef TYPE_3__ AVFrame ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_realloc_array (TYPE_2__*,size_t,int) ;
 TYPE_2__* bucket (TYPE_1__*,int) ;
 int check_consistency (TYPE_1__*) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;

int ff_framequeue_add(FFFrameQueue *fq, AVFrame *frame)
{
    FFFrameBucket *b;

    check_consistency(fq);
    if (fq->queued == fq->allocated) {
        if (fq->allocated == 1) {
            size_t na = 8;
            FFFrameBucket *nq = av_realloc_array(((void*)0), na, sizeof(*nq));
            if (!nq)
                return AVERROR(ENOMEM);
            nq[0] = fq->queue[0];
            fq->queue = nq;
            fq->allocated = na;
        } else {
            size_t na = fq->allocated << 1;
            FFFrameBucket *nq = av_realloc_array(fq->queue, na, sizeof(*nq));
            if (!nq)
                return AVERROR(ENOMEM);
            if (fq->tail + fq->queued > fq->allocated)
                memmove(nq + fq->allocated, nq,
                        (fq->tail + fq->queued - fq->allocated) * sizeof(*nq));
            fq->queue = nq;
            fq->allocated = na;
        }
    }
    b = bucket(fq, fq->queued);
    b->frame = frame;
    fq->queued++;
    fq->total_frames_head++;
    fq->total_samples_head += frame->nb_samples;
    check_consistency(fq);
    return 0;
}
