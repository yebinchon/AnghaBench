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
typedef  int u32 ;
struct memb_blks {int size; int num; int /*<<< orphan*/ * mem; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct memb_blks*) ; 

__attribute__((used)) static s32 FUNC6(struct memb_blks *blk,u32 buf_size,u32 num_bufs)
{
	u32 len;
	u8 *ptr = NULL;

	len = ((FUNC0(buf_size)+sizeof(u32))*num_bufs);
	ptr = (u8*)FUNC1(((u32)FUNC2() - len));
	if((u32)ptr<(u32)FUNC3()) return -4;

	FUNC4(ptr);

	blk->size = buf_size;
	blk->num = num_bufs;
	blk->mem = ptr;

	FUNC5(blk);
	return 0;
}