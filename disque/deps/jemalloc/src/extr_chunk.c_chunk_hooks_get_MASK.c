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
typedef  int /*<<< orphan*/  chunk_hooks_t ;
struct TYPE_4__ {int /*<<< orphan*/  chunks_mtx; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

chunk_hooks_t
FUNC3(arena_t *arena)
{
	chunk_hooks_t chunk_hooks;

	FUNC1(&arena->chunks_mtx);
	chunk_hooks = FUNC0(arena);
	FUNC2(&arena->chunks_mtx);

	return (chunk_hooks);
}