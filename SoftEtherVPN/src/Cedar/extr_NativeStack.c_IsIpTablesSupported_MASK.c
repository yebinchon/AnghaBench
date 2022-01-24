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
typedef  int /*<<< orphan*/  IPTABLES_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

bool FUNC2()
{
#ifdef	UNIX_LINUX
	IPTABLES_STATE *s = GetCurrentIpTables();
	if (s != NULL)
	{
		FreeIpTablesState(s);
		return true;
	}
	else
	{
		return false;
	}
#else	// UNIX_LINUX
	return false;
#endif	// UNIX_LINUX
}