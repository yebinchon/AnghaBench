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
typedef  int /*<<< orphan*/  extent_tree_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static extent_node_t *
FUNC4(arena_t *arena, extent_tree_t *chunks_szad,
    extent_tree_t *chunks_ad, size_t size)
{
	extent_node_t key;

	FUNC1(size == FUNC0(size));

	FUNC2(&key, arena, NULL, size, false, false);
	return (FUNC3(chunks_szad, &key));
}