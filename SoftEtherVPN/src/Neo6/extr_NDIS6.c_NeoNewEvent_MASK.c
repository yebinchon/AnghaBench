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
typedef  int /*<<< orphan*/  UNICODE ;
struct TYPE_5__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  event_handle; } ;
typedef  TYPE_1__ NEO_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  NotificationEvent ; 

NEO_EVENT *FUNC8(char *name)
{
	UNICODE *unicode_name;
	NEO_EVENT *event;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	// Convert the name to Unicode
	unicode_name = FUNC7(name);
	if (unicode_name == NULL)
	{
		return NULL;
	}

	// Memory allocation
	event = FUNC6(sizeof(NEO_EVENT));
	if (event == NULL)
	{
		FUNC0(unicode_name);
		return NULL;
	}

	// Create an Event
	event->event = FUNC2(FUNC1(unicode_name), &event->event_handle);
	if (event->event == NULL)
	{
		FUNC5(event);
		FUNC0(unicode_name);
		return NULL;
	}

	// Initialize the event
	FUNC4(event->event, NotificationEvent, FALSE);
	FUNC3(event->event);

	// Release a string
	FUNC0(unicode_name);

	return event;
}