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
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int* exception_location ; 

void FUNC6(u32 except)
{
	u32 level;
	void *pAdd = (void*)(0x80000000|exception_location[except]);

	FUNC2(level);
	FUNC4(except,NULL);

	*(u32*)pAdd = 0x4C000064;
	FUNC0(pAdd,0x100);
	FUNC1(pAdd,0x100);
	FUNC5();
	FUNC3(level);
}