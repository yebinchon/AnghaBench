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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 

void *FUNC4(LIST *o, bool fast)
{
	void *p;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	// Memory allocation
	if (fast == false)
	{
		p = FUNC2(sizeof(void *) * FUNC1(o));
	}
	else
	{
		p = FUNC3(sizeof(void *) * FUNC1(o));
	}
	// Copy
	FUNC0(o, p);

	return p;
}