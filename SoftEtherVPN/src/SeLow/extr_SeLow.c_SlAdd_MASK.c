#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_3__ {int num_item; int num_reserved; void** p; } ;
typedef  TYPE_1__ SL_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void** FUNC2 (int) ; 

void FUNC3(SL_LIST *o, void *p)
{
	UINT i;
	// Validate arguments
	if (o == NULL || p == NULL)
	{
		return;
	}

	i = o->num_item;
	o->num_item++;

	if (o->num_item > o->num_reserved)
	{
		UINT old_num_reserved = o->num_reserved;
		void *p_old = o->p;

		o->num_reserved = o->num_reserved * 2;

		o->p = FUNC2(sizeof(void *) * o->num_reserved);
		FUNC0(o->p, p_old, sizeof(void *) * old_num_reserved);
		FUNC1(p_old);
	}

	o->p[i] = p;
}