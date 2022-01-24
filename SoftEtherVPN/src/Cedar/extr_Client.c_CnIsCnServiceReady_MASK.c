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
typedef  int /*<<< orphan*/  SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_NOTIFY_PORT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4()
{
	SOCK *s;
	// Confirm running the notification service
	if (FUNC0(false) == false)
	{
		// Not running
		return false;
	}

	// Try to connect to the TCP port
	s = FUNC1("localhost", CLIENT_NOTIFY_PORT, 500);
	if (s == NULL)
	{
		// The TCP port is not opened
		return false;
	}

	FUNC2(s);
	FUNC3(s);

	// Running
	return true;
}