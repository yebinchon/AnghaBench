#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  TaskPostEvent; int /*<<< orphan*/  TaskQueue; scalar_t__ Halting; } ;
struct TYPE_8__ {int /*<<< orphan*/  CompleteEvent; int /*<<< orphan*/ * Request; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ FARM_TASK ;
typedef  TYPE_2__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 

FARM_TASK *FUNC8(FARM_MEMBER *f, PACK *request)
{
	FARM_TASK *t;
	// Validate arguments
	if (f == NULL || request == NULL)
	{
		return NULL;
	}

	t = FUNC7(sizeof(FARM_TASK));
	t->CompleteEvent = FUNC3();
	t->Request = request;

	FUNC2(f->TaskQueue);
	{
		if (f->Halting)
		{
			// Halting (failure)
			FUNC6(f->TaskQueue);
			FUNC4(t->CompleteEvent);
			FUNC0(t);
			return NULL;
		}

		FUNC1(f->TaskQueue, t);
	}
	FUNC6(f->TaskQueue);

	FUNC5(f->TaskPostEvent);

	return t;
}