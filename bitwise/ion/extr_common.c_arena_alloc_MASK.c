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
struct TYPE_4__ {void* end; void* ptr; } ;
typedef  TYPE_1__ Arena ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARENA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void *FUNC4(Arena *arena, size_t size) {
    if (size > (size_t)(arena->end - arena->ptr)) {
        FUNC2(arena, size);
        FUNC3(size <= (size_t)(arena->end - arena->ptr));
    }
    void *ptr = arena->ptr;
    arena->ptr = FUNC1(arena->ptr + size, ARENA_ALIGNMENT);
    FUNC3(arena->ptr <= arena->end);
    FUNC3(ptr == FUNC0(ptr, ARENA_ALIGNMENT));
    return ptr;
}