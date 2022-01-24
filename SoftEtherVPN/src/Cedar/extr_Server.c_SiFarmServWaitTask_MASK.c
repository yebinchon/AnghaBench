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
struct TYPE_4__ {int /*<<< orphan*/ * Response; int /*<<< orphan*/ * Request; int /*<<< orphan*/  CompleteEvent; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ FARM_TASK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PACK *FUNC5(FARM_TASK *t)
{
	PACK *response;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC4(t->CompleteEvent, INFINITE);
	FUNC3(t->CompleteEvent);
	FUNC1(t->Request);

	response = t->Response;
	FUNC0(t);

	if (FUNC2(response, "succeed") == 0)
	{
		// Task calling fails for any reason
		FUNC1(response);
		return NULL;
	}

	return response;
}