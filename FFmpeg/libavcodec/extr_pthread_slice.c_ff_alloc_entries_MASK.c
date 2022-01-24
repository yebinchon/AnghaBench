#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  pthread_cond_t ;
struct TYPE_7__ {int active_thread_type; int thread_count; TYPE_1__* internal; } ;
struct TYPE_6__ {int thread_count; int entries_count; int /*<<< orphan*/ * progress_cond; int /*<<< orphan*/ * progress_mutex; int /*<<< orphan*/ * entries; } ;
struct TYPE_5__ {TYPE_2__* thread_ctx; } ;
typedef  TYPE_2__ SliceThreadContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_THREAD_SLICE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(AVCodecContext *avctx, int count)
{
    int i;

    if (avctx->active_thread_type & FF_THREAD_SLICE)  {
        SliceThreadContext *p = avctx->internal->thread_ctx;

        if (p->entries) {
            FUNC1(p->thread_count == avctx->thread_count);
            FUNC2(&p->entries);
        }

        p->thread_count  = avctx->thread_count;
        p->entries       = FUNC4(count, sizeof(int));

        if (!p->progress_mutex) {
            p->progress_mutex = FUNC3(p->thread_count, sizeof(pthread_mutex_t));
            p->progress_cond  = FUNC3(p->thread_count, sizeof(pthread_cond_t));
        }

        if (!p->entries || !p->progress_mutex || !p->progress_cond) {
            FUNC2(&p->entries);
            FUNC2(&p->progress_mutex);
            FUNC2(&p->progress_cond);
            return FUNC0(ENOMEM);
        }
        p->entries_count  = count;

        for (i = 0; i < p->thread_count; i++) {
            FUNC6(&p->progress_mutex[i], NULL);
            FUNC5(&p->progress_cond[i], NULL);
        }
    }

    return 0;
}