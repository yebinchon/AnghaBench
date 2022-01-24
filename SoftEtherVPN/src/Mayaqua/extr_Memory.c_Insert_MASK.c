#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {int (* cmp ) (void**,void**) ;int sorted; int num_item; int num_reserved; void** p; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 size_t INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_INSERT_COUNT ; 
 int FUNC2 (TYPE_1__*) ; 
 void** FUNC3 (void**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (void**,void**) ; 

void FUNC6(LIST *o, void *p)
{
	int low, high, middle;
	UINT pos;
	int i;
	// Validate arguments
	if (o == NULL || p == NULL)
	{
		return;
	}

	if (o->cmp == NULL)
	{
		// adding simply if there is no sort function
		FUNC0(o, p);
		return;
	}

	// Sort immediately if it is not sorted
	if (o->sorted == false)
	{
		FUNC4(o);
	}

	low = 0;
	high = FUNC2(o) - 1;

	pos = INFINITE;

	while (low <= high)
	{
		int ret;

		middle = (low + high) / 2;
		ret = o->cmp(&(o->p[middle]), &p);

		if (ret == 0)
		{
			pos = middle;
			break;
		}
		else if (ret > 0)
		{
			high = middle - 1;
		}
		else
		{
			low = middle + 1;
		}
	}

	if (pos == INFINITE)
	{
		pos = low;
	}

	o->num_item++;
	if (o->num_item > o->num_reserved)
	{
		o->num_reserved *= 2;
		o->p = FUNC3(o->p, sizeof(void *) * o->num_reserved);
	}

	if (FUNC2(o) >= 2)
	{
		for (i = (FUNC2(o) - 2);i >= (int)pos;i--)
		{
			o->p[i + 1] = o->p[i];
		}
	}

	o->p[pos] = p;

	// KS
	FUNC1(KS_INSERT_COUNT);
}