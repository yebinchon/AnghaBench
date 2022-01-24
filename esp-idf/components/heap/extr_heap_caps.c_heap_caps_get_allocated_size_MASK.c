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
struct TYPE_3__ {int /*<<< orphan*/  heap; } ;
typedef  TYPE_1__ heap_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,void*) ; 

size_t FUNC2( void *ptr )
{
    heap_t *heap = FUNC0(ptr);
    size_t size = FUNC1(heap->heap, ptr);
    return size;
}