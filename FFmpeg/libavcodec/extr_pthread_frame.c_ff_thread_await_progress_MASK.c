#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atomic_int ;
struct TYPE_9__ {TYPE_6__** owner; TYPE_1__* progress; } ;
typedef  TYPE_3__ ThreadFrame ;
struct TYPE_11__ {TYPE_2__* internal; } ;
struct TYPE_10__ {int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  progress_cond; int /*<<< orphan*/  debug_threads; } ;
struct TYPE_8__ {TYPE_4__* thread_ctx; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef  TYPE_4__ PerThreadContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(ThreadFrame *f, int n, int field)
{
    PerThreadContext *p;
    atomic_int *progress = f->progress ? (atomic_int*)f->progress->data : NULL;

    if (!progress ||
        FUNC0(&progress[field], memory_order_acquire) >= n)
        return;

    p = f->owner[field]->internal->thread_ctx;

    if (FUNC0(&p->debug_threads, memory_order_relaxed))
        FUNC1(f->owner[field], AV_LOG_DEBUG,
               "thread awaiting %d field %d from %p\n", n, field, progress);

    FUNC3(&p->progress_mutex);
    while (FUNC0(&progress[field], memory_order_relaxed) < n)
        FUNC2(&p->progress_cond, &p->progress_mutex);
    FUNC4(&p->progress_mutex);
}