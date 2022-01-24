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
typedef  int /*<<< orphan*/  u32 ;
struct mem {size_t next; size_t prev; int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t MEM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ram_block ; 
 struct mem* ram_end ; 
 struct mem* ram_free ; 

void FUNC3()
{
	u32 level;
	struct mem *rmem;

	FUNC0(ram_block,0,MEM_SIZE);

	FUNC1(level);
	rmem = (struct mem*)ram_block;
	rmem->next = MEM_SIZE;
	rmem->prev = 0;
	rmem->used = 0;

	ram_end = (struct mem*)&ram_block[MEM_SIZE];
	ram_end->used = 1;
	ram_end->prev = MEM_SIZE;
	ram_end->next = MEM_SIZE;

	ram_free = (struct mem*)ram_block;
	FUNC2(level);
}