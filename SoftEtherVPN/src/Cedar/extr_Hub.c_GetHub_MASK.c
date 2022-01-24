#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_9__ {char* Name; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ HUB ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

HUB *FUNC4(CEDAR *cedar, char *name)
{
	HUB *h, t;
	// Validate arguments
	if (cedar == NULL || name == NULL)
	{
		return NULL;
	}

	FUNC1(cedar);

	t.Name = name;
	h = FUNC2(cedar->HubList, &t);
	if (h == NULL)
	{
		FUNC3(cedar);
		return NULL;
	}

	FUNC0(h->ref);

	FUNC3(cedar);

	return h;
}