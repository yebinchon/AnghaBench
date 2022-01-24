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
typedef  int UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* MEMORY_mem ; 
 scalar_t__ PBI_D6D7ram ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(UWORD addr, UBYTE byte)
{
	FUNC0(FUNC1("PBI_D7PutByte:%4x <- %2x\n",addr,byte));
	if (PBI_D6D7ram) MEMORY_mem[addr]=byte;
}