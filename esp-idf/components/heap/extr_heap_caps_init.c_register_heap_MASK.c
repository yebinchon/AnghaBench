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
struct TYPE_3__ {size_t end; size_t start; int /*<<< orphan*/ * heap; } ;
typedef  TYPE_1__ heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 size_t HEAP_SIZE_MAX ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (void*,size_t) ; 

__attribute__((used)) static void FUNC3(heap_t *region)
{
    size_t heap_size = region->end - region->start;
    FUNC1(heap_size <= HEAP_SIZE_MAX);
    region->heap = FUNC2((void *)region->start, heap_size);
    if (region->heap != NULL) {
        FUNC0(TAG, "New heap initialised at %p", region->heap);
    }
}