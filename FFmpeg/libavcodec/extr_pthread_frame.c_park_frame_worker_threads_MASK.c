#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* threads; } ;
struct TYPE_6__ {scalar_t__ got_frame; int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  output_cond; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ PerThreadContext ;
typedef  TYPE_2__ FrameThreadContext ;

/* Variables and functions */
 scalar_t__ STATE_INPUT_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(FrameThreadContext *fctx, int thread_count)
{
    int i;

    FUNC1(fctx);

    for (i = 0; i < thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        if (FUNC2(&p->state) != STATE_INPUT_READY) {
            FUNC4(&p->progress_mutex);
            while (FUNC2(&p->state) != STATE_INPUT_READY)
                FUNC3(&p->output_cond, &p->progress_mutex);
            FUNC5(&p->progress_mutex);
        }
        p->got_frame = 0;
    }

    FUNC0(fctx);
}