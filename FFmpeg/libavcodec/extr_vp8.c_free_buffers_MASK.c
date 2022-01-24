#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * macroblocks; TYPE_3__* top_border; TYPE_3__* top_nnz; TYPE_3__* intra4x4_pred_mode_top; TYPE_3__* macroblocks_base; TYPE_3__* thread_data; } ;
typedef  TYPE_1__ VP8Context ;
struct TYPE_5__ {struct TYPE_5__* filter_strength; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int MAX_THREADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(VP8Context *s)
{
    int i;
    if (s->thread_data)
        for (i = 0; i < MAX_THREADS; i++) {
#if HAVE_THREADS
            pthread_cond_destroy(&s->thread_data[i].cond);
            pthread_mutex_destroy(&s->thread_data[i].lock);
#endif
            FUNC0(&s->thread_data[i].filter_strength);
        }
    FUNC0(&s->thread_data);
    FUNC0(&s->macroblocks_base);
    FUNC0(&s->intra4x4_pred_mode_top);
    FUNC0(&s->top_nnz);
    FUNC0(&s->top_border);

    s->macroblocks = NULL;
}