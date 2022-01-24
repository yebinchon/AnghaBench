#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
struct TYPE_5__ {TYPE_1__* HubDb; } ;
struct TYPE_4__ {int /*<<< orphan*/  CrlList; } ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(HUB *h, X *x)
{
	bool ret;
	// Validate arguments
	if (h == NULL || x == NULL)
	{
		return false;
	}

	if (h->HubDb == NULL)
	{
		return false;
	}

	FUNC1(h->HubDb->CrlList);
	{
		ret = FUNC0(x, h->HubDb->CrlList);
	}
	FUNC2(h->HubDb->CrlList);

	if (ret)
	{
		// This is invalid because it was matched
		return false;
	}

	// This is valid because it wasn't matched
	return true;
}