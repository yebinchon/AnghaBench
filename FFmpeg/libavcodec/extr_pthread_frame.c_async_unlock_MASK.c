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
struct TYPE_3__ {int /*<<< orphan*/  async_mutex; int /*<<< orphan*/  async_cond; scalar_t__ async_lock; } ;
typedef  TYPE_1__ FrameThreadContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(FrameThreadContext *fctx)
{
    FUNC2(&fctx->async_mutex);
    FUNC0(fctx->async_lock);
    fctx->async_lock = 0;
    FUNC1(&fctx->async_cond);
    FUNC3(&fctx->async_mutex);
}