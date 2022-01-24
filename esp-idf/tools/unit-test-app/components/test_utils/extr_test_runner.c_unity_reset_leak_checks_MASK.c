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
 int /*<<< orphan*/  HEAP_TRACE_LEAKS ; 
 int /*<<< orphan*/  MALLOC_CAP_32BIT ; 
 int /*<<< orphan*/  MALLOC_CAP_8BIT ; 
 void* before_free_32bit ; 
 void* before_free_8bit ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
    before_free_8bit = FUNC0(MALLOC_CAP_8BIT);
    before_free_32bit = FUNC0(MALLOC_CAP_32BIT);

#ifdef CONFIG_HEAP_TRACING
    heap_trace_start(HEAP_TRACE_LEAKS);
#endif
}