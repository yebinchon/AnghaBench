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
typedef  int /*<<< orphan*/  multi_heap_handle_t ;
typedef  int /*<<< orphan*/  heap_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

size_t FUNC5(multi_heap_handle_t heap, void *p)
{
    heap_block_t *pb = FUNC3(p);

    FUNC1(heap, pb);
    FUNC0(!FUNC4(pb), pb); // block shouldn't be free
    return FUNC2(pb);
}