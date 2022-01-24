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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 

void FUNC3(SERVER *s, FOLDER *f)
{
	bool enable;
	UINT port;
	bool disable_dos;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	enable = FUNC0(f, "Enabled");
	port = FUNC1(f, "Port");
	disable_dos = FUNC0(f, "DisableDos");

	if (port == 0)
	{
		return;
	}

	FUNC2(s, port, enable, disable_dos);
}