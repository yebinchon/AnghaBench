#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* internal; } ;
struct TYPE_9__ {int thread_count; struct TYPE_9__* progress_cond; struct TYPE_9__* progress_mutex; struct TYPE_9__* entries; int /*<<< orphan*/  thread; } ;
struct TYPE_8__ {TYPE_2__* thread_ctx; } ;
typedef  TYPE_2__ SliceThreadContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(AVCodecContext *avctx)
{
    SliceThreadContext *c = avctx->internal->thread_ctx;
    int i;

    FUNC1(&c->thread);

    for (i = 0; i < c->thread_count; i++) {
        FUNC3(&c->progress_mutex[i]);
        FUNC2(&c->progress_cond[i]);
    }

    FUNC0(&c->entries);
    FUNC0(&c->progress_mutex);
    FUNC0(&c->progress_cond);
    FUNC0(&avctx->internal->thread_ctx);
}