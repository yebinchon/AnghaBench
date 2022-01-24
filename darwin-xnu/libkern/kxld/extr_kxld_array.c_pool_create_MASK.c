#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* buffer; } ;
typedef  TYPE_1__ KXLDArrayPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  finish ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static KXLDArrayPool *
FUNC5(size_t capacity)
{
    KXLDArrayPool *pool = NULL, *rval = NULL;

    pool = FUNC1(sizeof(*pool));
    FUNC4(pool, finish);

    pool->buffer = FUNC2(capacity);
    FUNC4(pool->buffer, finish);
    FUNC0(pool->buffer, capacity);

    rval = pool;
    pool = NULL;

finish:
    if (pool) FUNC3(pool, capacity);
    return rval;
}