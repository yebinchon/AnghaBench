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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * server ; 
 int /*<<< orphan*/  server_lock ; 

void FUNC4()
{
	FUNC0(server_lock);
	{
		if (server == NULL)
		{
			// Not started
			FUNC3(server_lock);
			return;
		}

		// Release the server
		FUNC1(server);
		server = NULL;
	}
	FUNC3(server_lock);

	FUNC2();
}