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
typedef  size_t UINT ;
struct TYPE_3__ {size_t num_item; size_t num_reserved; int sorted; void** p; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_INSERT_COUNT ; 
 void** FUNC1 (void**,int) ; 

void FUNC2(LIST *o, void *p)
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
		o->num_reserved = o->num_reserved * 2;
		o->p = FUNC1(o->p, sizeof(void *) * o->num_reserved);
	}

	o->p[i] = p;
	o->sorted = false;

	// KS
	FUNC0(KS_INSERT_COUNT);
}