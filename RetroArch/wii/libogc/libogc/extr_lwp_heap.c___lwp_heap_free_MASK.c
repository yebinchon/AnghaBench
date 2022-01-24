#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_18__ {TYPE_2__* first; } ;
typedef  TYPE_1__ heap_cntrl ;
struct TYPE_19__ {scalar_t__ front_flag; scalar_t__ back_flag; struct TYPE_19__* prev; struct TYPE_19__* next; } ;
typedef  TYPE_2__ heap_block ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,void*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (void*) ; 

BOOL FUNC11(heap_cntrl *theheap,void *ptr)
{
	heap_block *block;
	heap_block *next_block;
	heap_block *new_next;
	heap_block *prev_block;
	heap_block *tmp_block;
	u32 dsize,level;

	FUNC0(level);

	block = FUNC10(ptr);
	if(!FUNC4(theheap,block) || FUNC3(block)) {
		FUNC1(level);
		return FALSE;
	}

	dsize = FUNC5(block);
	next_block = FUNC2(block,dsize);

	if(!FUNC4(theheap,next_block) || (block->front_flag!=next_block->back_flag)) {
		FUNC1(level);
		return FALSE;
	}

	if(FUNC8(block)) {
		prev_block = FUNC9(block);
		if(!FUNC4(theheap,prev_block)) {
			FUNC1(level);
			return FALSE;
		}

		if(FUNC3(next_block)) {
			prev_block->front_flag += next_block->front_flag+dsize;
			tmp_block = FUNC7(prev_block);
			tmp_block->back_flag = prev_block->front_flag;
			next_block->next->prev = next_block->prev;
			next_block->prev->next = next_block->next;
		} else {
			prev_block->front_flag = next_block->back_flag = prev_block->front_flag+dsize;
		}
	} else if(FUNC3(next_block)) {
		block->front_flag = dsize+next_block->front_flag;
		new_next = FUNC7(block);
		new_next->back_flag = block->front_flag;
		block->next = next_block->next;
		block->prev = next_block->prev;
		next_block->prev->next = block;
		next_block->next->prev = block;

		if(theheap->first==next_block) theheap->first = block;
	} else {
		next_block->back_flag = block->front_flag = dsize;
		block->prev = FUNC6(theheap);
		block->next = theheap->first;
		theheap->first = block;
		block->next->prev = block;
	}
	FUNC1(level);

	return TRUE;
}