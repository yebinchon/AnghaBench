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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct mem {scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SIZEOF_STRUCT_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem*) ; 
 scalar_t__ ram_block ; 
 scalar_t__ ram_end ; 
 struct mem* ram_free ; 

void FUNC3(void *ptr)
{
	u32 level;
	struct mem *rmem;

	if(ptr==NULL) return;
	if((u8_t*)ptr<(u8_t*)ram_block || (u8_t*)ptr>=(u8_t*)ram_end) return;

	FUNC0(level);
	rmem = (struct mem*)((u8_t*)ptr - SIZEOF_STRUCT_MEM);
	rmem->used = 0;

	if(rmem<ram_free) ram_free = rmem;

	FUNC2(rmem);
	FUNC1(level);
}