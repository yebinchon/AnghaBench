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
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {int* entries; int thread_count; int /*<<< orphan*/ * progress_mutex; int /*<<< orphan*/ * progress_cond; } ;
struct TYPE_5__ {TYPE_2__* thread_ctx; } ;
typedef  TYPE_2__ SliceThreadContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(AVCodecContext *avctx, int field, int thread, int shift)
{
    SliceThreadContext *p  = avctx->internal->thread_ctx;
    int *entries      = p->entries;

    if (!entries || !field) return;

    thread = thread ? thread - 1 : p->thread_count - 1;

    FUNC1(&p->progress_mutex[thread]);
    while ((entries[field - 1] - entries[field]) < shift){
        FUNC0(&p->progress_cond[thread], &p->progress_mutex[thread]);
    }
    FUNC2(&p->progress_mutex[thread]);
}