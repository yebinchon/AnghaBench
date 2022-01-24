#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; scalar_t__ max_size; size_t windex; int /*<<< orphan*/ * queue; TYPE_1__* pktq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
struct TYPE_4__ {scalar_t__ abort_request; } ;
typedef  TYPE_2__ FrameQueue ;
typedef  int /*<<< orphan*/  Frame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Frame *FUNC3(FrameQueue *f)
{
    /* wait until we have space to put a new frame */
    FUNC1(f->mutex);
    while (f->size >= f->max_size &&
           !f->pktq->abort_request) {
        FUNC0(f->cond, f->mutex);
    }
    FUNC2(f->mutex);

    if (f->pktq->abort_request)
        return NULL;

    return &f->queue[f->windex];
}