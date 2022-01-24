#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* pool_free ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  data; int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct TYPE_5__* next; struct TYPE_5__* pool; } ;
typedef  TYPE_1__ BufferPoolEntry ;
typedef  TYPE_1__ AVBufferPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(AVBufferPool *pool)
{
    while (pool->pool) {
        BufferPoolEntry *buf = pool->pool;
        pool->pool = buf->next;

        buf->free(buf->opaque, buf->data);
        FUNC0(&buf);
    }
    FUNC1(&pool->mutex);

    if (pool->pool_free)
        pool->pool_free(pool->opaque);

    FUNC0(&pool);
}