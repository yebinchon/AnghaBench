#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/  first_bucket; scalar_t__ queued; } ;
typedef  TYPE_1__ FFFrameQueue ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

void FUNC3(FFFrameQueue *fq)
{
    while (fq->queued) {
        AVFrame *frame = FUNC2(fq);
        FUNC0(&frame);
    }
    if (fq->queue != &fq->first_bucket)
        FUNC1(&fq->queue);
}