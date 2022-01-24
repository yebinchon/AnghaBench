#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static arena_t *
FUNC4(unsigned arena_ind)
{
	arena_t *arena;

	/* Dodge tsd for a0 in order to avoid bootstrapping issues. */
	arena = (arena_ind == 0) ? FUNC0() : FUNC1(FUNC3(), arena_ind,
	     false, true);
	/*
	 * The arena we're allocating on behalf of must have been initialized
	 * already.
	 */
	FUNC2(arena != NULL);
	return (arena);
}