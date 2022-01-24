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
typedef  int /*<<< orphan*/  prof_tctx_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_3__ {int /*<<< orphan*/  huge_mtx; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(const void *ptr, prof_tctx_t *tctx)
{
	extent_node_t *node;
	arena_t *arena;

	node = FUNC2(ptr);
	arena = FUNC0(node);
	FUNC3(&arena->huge_mtx);
	FUNC1(node, tctx);
	FUNC4(&arena->huge_mtx);
}