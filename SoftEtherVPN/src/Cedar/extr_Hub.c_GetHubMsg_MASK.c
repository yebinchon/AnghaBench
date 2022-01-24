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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * Msg; } ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

wchar_t *FUNC3(HUB *h)
{
	wchar_t *ret = NULL;
	// Validate arguments
	if (h == NULL)
	{
		return NULL;
	}

	FUNC1(h->lock);
	{
		if (h->Msg != NULL)
		{
			ret = FUNC0(h->Msg);
		}
	}
	FUNC2(h->lock);

	return ret;
}