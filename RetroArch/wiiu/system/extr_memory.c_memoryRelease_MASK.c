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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_BASE_HEAP_FG ; 
 int /*<<< orphan*/  MEM_BASE_HEAP_MEM1 ; 
 int /*<<< orphan*/  MEM_FRAME_HEAP_FREE_ALL ; 
 int /*<<< orphan*/ * bucket_heap ; 
 int /*<<< orphan*/ * mem1_heap ; 

void FUNC3(void)
{
    FUNC0(mem1_heap);
    FUNC1(FUNC2(MEM_BASE_HEAP_MEM1), MEM_FRAME_HEAP_FREE_ALL);
    mem1_heap = NULL;

    FUNC0(bucket_heap);
    FUNC1(FUNC2(MEM_BASE_HEAP_FG), MEM_FRAME_HEAP_FREE_ALL);
    bucket_heap = NULL;
}