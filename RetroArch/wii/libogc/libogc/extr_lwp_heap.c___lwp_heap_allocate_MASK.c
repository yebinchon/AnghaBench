#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_13__ {int pg_size; TYPE_3__* first; } ;
typedef  TYPE_2__ heap_cntrl ;
struct TYPE_14__ {int front_flag; int back_flag; struct TYPE_14__* next; TYPE_1__* prev; } ;
typedef  TYPE_3__ heap_block ;
struct TYPE_12__ {TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEAP_BLOCK_USED ; 
 int HEAP_BLOCK_USED_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 

void* FUNC7(heap_cntrl *theheap,u32 size)
{
	u32 excess;
	u32 dsize;
	heap_block *block;
	heap_block *next_block;
	heap_block *tmp_block;
	void *ptr;
	u32 offset,level;

	if(size>=(-1-HEAP_BLOCK_USED_OVERHEAD)) return NULL;

	FUNC0(level);
	excess = (size % theheap->pg_size);
	dsize = (size + theheap->pg_size + HEAP_BLOCK_USED_OVERHEAD);

	if(excess)
		dsize += (theheap->pg_size - excess);

	if(dsize<sizeof(heap_block)) dsize = sizeof(heap_block);

	for(block=theheap->first;;block=block->next) {
		if(block==FUNC6(theheap)) {
			FUNC1(level);
			return NULL;
		}
		if(block->front_flag>=dsize) break;
	}

	if((block->front_flag-dsize)>(theheap->pg_size+HEAP_BLOCK_USED_OVERHEAD)) {
		block->front_flag -= dsize;
		next_block = FUNC4(block);
		next_block->back_flag = block->front_flag;

		tmp_block = FUNC2(next_block,dsize);
		tmp_block->back_flag = next_block->front_flag = FUNC3(dsize,HEAP_BLOCK_USED);

		ptr = FUNC5(next_block);
	} else {
		next_block = FUNC4(block);
		next_block->back_flag = FUNC3(block->front_flag,HEAP_BLOCK_USED);

		block->front_flag = next_block->back_flag;
		block->next->prev = block->prev;
		block->prev->next = block->next;

		ptr = FUNC5(block);
	}

	offset = (theheap->pg_size - ((u32)ptr&(theheap->pg_size-1)));
	ptr += offset;
	*(((u32*)ptr)-1) = offset;
	FUNC1(level);

	return ptr;
}