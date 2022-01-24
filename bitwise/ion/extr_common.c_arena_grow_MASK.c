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
struct TYPE_3__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  blocks; scalar_t__ end; } ;
typedef  TYPE_1__ Arena ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARENA_ALIGNMENT ; 
 int /*<<< orphan*/  ARENA_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 

void FUNC6(Arena *arena, size_t min_size) {
    size_t size = FUNC1(FUNC2(min_size, ARENA_BLOCK_SIZE), ARENA_ALIGNMENT);
    arena->ptr = FUNC5(size);
    FUNC3(arena->ptr == FUNC0(arena->ptr, ARENA_ALIGNMENT));
    arena->end = arena->ptr + size;
    FUNC4(arena->blocks, arena->ptr);
}