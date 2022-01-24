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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 

void* FUNC4(void *ptr,u32 newsize)
{
	void *nmem;

	nmem = FUNC2(newsize);
	if(nmem==NULL) return FUNC3(ptr,newsize);

	FUNC0(nmem,ptr,newsize);
	FUNC1(ptr);

	return nmem;
}