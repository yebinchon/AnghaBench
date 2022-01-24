#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  event_handle; } ;
typedef  int /*<<< orphan*/  SL_UNICODE ;
typedef  TYPE_1__ SL_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (int) ; 

SL_EVENT *FUNC8(char *name)
{
	SL_UNICODE *unicode_name;
	SL_EVENT *event;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	// Convert to Unicode name
	unicode_name = FUNC6(name);
	if (unicode_name == NULL)
	{
		return NULL;
	}

	// Memory allocation
	event = FUNC7(sizeof(SL_EVENT));
	if (event == NULL)
	{
		FUNC4(unicode_name);
		return NULL;
	}

	// Create an event
	event->event = FUNC0(FUNC5(unicode_name), &event->event_handle);
	if (event->event == NULL)
	{
		FUNC3(event);
		FUNC4(unicode_name);
		return NULL;
	}

	// Initialize the event
	FUNC2(event->event, NotificationEvent, FALSE);
	FUNC1(event->event);

	// Release the string
	FUNC4(unicode_name);

	return event;
}