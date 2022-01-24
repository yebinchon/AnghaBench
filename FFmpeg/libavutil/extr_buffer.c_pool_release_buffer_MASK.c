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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; int /*<<< orphan*/  mutex; TYPE_1__* pool; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  data; TYPE_2__* pool; } ;
typedef  TYPE_1__ BufferPoolEntry ;
typedef  TYPE_2__ AVBufferPool ;

/* Variables and functions */
 scalar_t__ CONFIG_MEMORY_POISONING ; 
 int /*<<< orphan*/  FF_MEMORY_POISON ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_order_acq_rel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *opaque, uint8_t *data)
{
    BufferPoolEntry *buf = opaque;
    AVBufferPool *pool = buf->pool;

    if(CONFIG_MEMORY_POISONING)
        FUNC4(buf->data, FF_MEMORY_POISON, pool->size);

    FUNC2(&pool->mutex);
    buf->next = pool->pool;
    pool->pool = buf;
    FUNC3(&pool->mutex);

    if (FUNC0(&pool->refcount, -1, memory_order_acq_rel) == 1)
        FUNC1(pool);
}