#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/ * CancelList; TYPE_1__* Switch; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(L3IF *f, void *data, UINT size)
{
	PKT *p;
	L3SW *s;
	if (f == NULL)
	{
		return;
	}

	s = f->Switch;

	if (data != NULL)
	{
		// Handle the next packet
		if (f->CancelList == NULL)
		{
			f->CancelList = FUNC4();
		}

		// Packet analysis
		p = FUNC5(data, size);

		if (p == NULL)
		{
			// Packet analysis failure
			FUNC1(data);
		}
		else
		{
			// Packet analysis success
			FUNC3(s->lock);
			{
				FUNC2(f, p);
			}
			FUNC7(s->lock);
		}
	}
	else
	{
		// Cancel for the cancellation list after all packet processing has been finished
		if (f->CancelList != NULL)
		{
			FUNC0(f->CancelList);
			FUNC6(f->CancelList);
			f->CancelList = NULL;
		}
	}
}