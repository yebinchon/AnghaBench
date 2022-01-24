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
struct TYPE_4__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ AVBufferPool ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acq_rel ; 

void FUNC2(AVBufferPool **ppool)
{
    AVBufferPool *pool;

    if (!ppool || !*ppool)
        return;
    pool   = *ppool;
    *ppool = NULL;

    if (FUNC0(&pool->refcount, -1, memory_order_acq_rel) == 1)
        FUNC1(pool);
}