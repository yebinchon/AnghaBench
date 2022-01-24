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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  huge_mtx; int /*<<< orphan*/  huge; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ql_link ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC11(tsd_t *tsd, void *ptr, tcache_t *tcache)
{
	extent_node_t *node;
	arena_t *arena;

	node = FUNC5(ptr);
	arena = FUNC2(node);
	FUNC6(ptr, node);
	FUNC8(&arena->huge_mtx);
	FUNC10(&arena->huge, node, ql_link);
	FUNC9(&arena->huge_mtx);

	FUNC4(FUNC1(node),
	    FUNC3(node));
	FUNC0(FUNC2(node),
	    FUNC1(node), FUNC3(node));
	FUNC7(tsd, node, tcache, true);
}