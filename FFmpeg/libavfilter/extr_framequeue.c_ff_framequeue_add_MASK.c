#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ nb_samples; } ;
struct TYPE_14__ {TYPE_3__* frame; } ;
struct TYPE_13__ {int queued; int allocated; int tail; int /*<<< orphan*/  total_samples_head; int /*<<< orphan*/  total_frames_head; TYPE_2__* queue; } ;
typedef  TYPE_1__ FFFrameQueue ;
typedef  TYPE_2__ FFFrameBucket ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_2__*,size_t,int) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 

int FUNC5(FFFrameQueue *fq, AVFrame *frame)
{
    FFFrameBucket *b;

    FUNC3(fq);
    if (fq->queued == fq->allocated) {
        if (fq->allocated == 1) {
            size_t na = 8;
            FFFrameBucket *nq = FUNC1(NULL, na, sizeof(*nq));
            if (!nq)
                return FUNC0(ENOMEM);
            nq[0] = fq->queue[0];
            fq->queue = nq;
            fq->allocated = na;
        } else {
            size_t na = fq->allocated << 1;
            FFFrameBucket *nq = FUNC1(fq->queue, na, sizeof(*nq));
            if (!nq)
                return FUNC0(ENOMEM);
            if (fq->tail + fq->queued > fq->allocated)
                FUNC4(nq + fq->allocated, nq,
                        (fq->tail + fq->queued - fq->allocated) * sizeof(*nq));
            fq->queue = nq;
            fq->allocated = na;
        }
    }
    b = FUNC2(fq, fq->queued);
    b->frame = frame;
    fq->queued++;
    fq->total_frames_head++;
    fq->total_samples_head += frame->nb_samples;
    FUNC3(fq);
    return 0;
}