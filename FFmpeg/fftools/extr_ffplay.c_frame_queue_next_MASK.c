#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rindex_shown; size_t rindex; size_t max_size; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  size; int /*<<< orphan*/ * queue; scalar_t__ keep_last; } ;
typedef  TYPE_1__ FrameQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(FrameQueue *f)
{
    if (f->keep_last && !f->rindex_shown) {
        f->rindex_shown = 1;
        return;
    }
    FUNC3(&f->queue[f->rindex]);
    if (++f->rindex == f->max_size)
        f->rindex = 0;
    FUNC1(f->mutex);
    f->size--;
    FUNC0(f->cond);
    FUNC2(f->mutex);
}