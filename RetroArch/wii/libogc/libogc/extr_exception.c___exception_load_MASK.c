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
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* exception_location ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 

void FUNC4(u32 nExc,void *data,u32 len,void *patch)
{
	void *pAddr = (void*)(0x80000000|exception_location[nExc]);
	FUNC3(pAddr,data,len);
	if(patch)
		*(u32*)((u32)pAddr+(patch-data)) |= nExc;

	FUNC0(pAddr,len);
	FUNC1(pAddr,len);
	FUNC2();
}