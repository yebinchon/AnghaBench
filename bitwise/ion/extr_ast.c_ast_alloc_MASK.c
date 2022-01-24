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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ast_arena ; 
 size_t ast_memory_usage ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 

void *FUNC3(size_t size) {
    FUNC1(size != 0);
    void *ptr = FUNC0(&ast_arena, size);
    FUNC2(ptr, 0, size);
    ast_memory_usage += size;
    return ptr;
}