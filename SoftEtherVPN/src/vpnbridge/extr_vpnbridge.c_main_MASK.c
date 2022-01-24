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
 int /*<<< orphan*/  GC_SVC_NAME_VPNBRIDGE ; 
 int /*<<< orphan*/  ICO_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  StartProcess ; 
 int /*<<< orphan*/  StopProcess ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int argc, char *argv[])
{
	FUNC0();

	FUNC3();

#ifdef	OS_WIN32
	return MsService(GC_SVC_NAME_VPNBRIDGE, StartProcess, StopProcess, ICO_BRIDGE, argv[0]);
#else	// OS_WIN32
	return FUNC2(argc, argv, "vpnbridge", StartProcess, StopProcess);
#endif	// OS_WIN32
}