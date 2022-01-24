#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Queue; } ;
typedef  int /*<<< orphan*/  TUBEDATA ;
typedef  TYPE_1__ TUBE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

TUBEDATA *FUNC4(TUBE *t)
{
	TUBEDATA *d;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	if (FUNC1(t) == false)
	{
		return NULL;
	}

	FUNC2(t->Queue);
	{
		d = FUNC0(t->Queue);
	}
	FUNC3(t->Queue);

	return d;
}