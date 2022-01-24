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
struct TYPE_7__ {int /*<<< orphan*/  refcount; int /*<<< orphan*/  mutex; TYPE_1__* pool; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ BufferPoolEntry ;
typedef  int /*<<< orphan*/  AVBufferRef ;
typedef  TYPE_2__ AVBufferPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  pool_release_buffer ; 

AVBufferRef *FUNC5(AVBufferPool *pool)
{
    AVBufferRef *ret;
    BufferPoolEntry *buf;

    FUNC2(&pool->mutex);
    buf = pool->pool;
    if (buf) {
        ret = FUNC1(buf->data, pool->size, pool_release_buffer,
                               buf, 0);
        if (ret) {
            pool->pool = buf->next;
            buf->next = NULL;
        }
    } else {
        ret = FUNC4(pool);
    }
    FUNC3(&pool->mutex);

    if (ret)
        FUNC0(&pool->refcount, 1, memory_order_relaxed);

    return ret;
}