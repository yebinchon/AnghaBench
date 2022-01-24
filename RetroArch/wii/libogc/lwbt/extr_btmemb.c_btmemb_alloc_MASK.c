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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct memb_blks {scalar_t__ num; int /*<<< orphan*/  size; scalar_t__ mem; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void* FUNC3(struct memb_blks *blk)
{
	s32 i;
	u32 *ptr;
	u32 level;
	void *p;

	FUNC1(level);
	ptr = (u32*)blk->mem;
	for(i=0;i<blk->num;i++) {
		if(*ptr==0) {
			++(*ptr);
			p = (ptr+1);
			FUNC2(level);
			return p;
		}
		ptr = (u32*)((u8*)ptr+(FUNC0(blk->size)+sizeof(u32)));
	}
	FUNC2(level);
	return NULL;
}