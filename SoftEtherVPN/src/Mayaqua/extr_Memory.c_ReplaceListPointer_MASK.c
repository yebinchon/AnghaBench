#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {void** p; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,size_t) ; 
 size_t FUNC1 (TYPE_1__*) ; 

bool FUNC2(LIST *o, void *oldptr, void *newptr)
{
	UINT i;
	// Validate arguments
	if (o == NULL || oldptr == NULL || newptr == NULL)
	{
		return false;
	}

	for (i = 0;i < FUNC1(o);i++)
	{
		void *p = FUNC0(o, i);

		if (p == oldptr)
		{
			o->p[i] = newptr;
			return true;
		}
	}

	return false;
}