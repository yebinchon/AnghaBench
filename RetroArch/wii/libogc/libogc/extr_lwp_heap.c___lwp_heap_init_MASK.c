#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_8__ {TYPE_2__* final; TYPE_2__* last; int /*<<< orphan*/ * perm_null; TYPE_2__* first; TYPE_2__* start; scalar_t__ pg_size; } ;
typedef  TYPE_1__ heap_cntrl ;
struct TYPE_9__ {void* front_flag; void* back_flag; int /*<<< orphan*/  prev; int /*<<< orphan*/  next; } ;
typedef  TYPE_2__ heap_block ;

/* Variables and functions */
 scalar_t__ HEAP_BLOCK_USED_OVERHEAD ; 
 void* HEAP_DUMMY_FLAG ; 
 scalar_t__ HEAP_MIN_SIZE ; 
 scalar_t__ HEAP_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

u32 FUNC6(heap_cntrl *theheap,void *start_addr,u32 size,u32 pg_size)
{
	u32 dsize,level;
	heap_block *block;

	if(!FUNC4(pg_size) || size<HEAP_MIN_SIZE) return 0;

	FUNC0(level);
	theheap->pg_size = pg_size;
	dsize = (size - HEAP_OVERHEAD);

	block = (heap_block*)start_addr;
	block->back_flag = HEAP_DUMMY_FLAG;
	block->front_flag = dsize;
	block->next	= FUNC5(theheap);
	block->prev = FUNC2(theheap);

	theheap->start = block;
	theheap->first = block;
	theheap->perm_null = NULL;
	theheap->last = block;

	block = FUNC3(block);
	block->back_flag = dsize;
	block->front_flag = HEAP_DUMMY_FLAG;
	theheap->final = block;
	FUNC1(level);

	return (dsize - HEAP_BLOCK_USED_OVERHEAD);
}