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
typedef  int socklen_t ;

/* Variables and functions */
 int IFXNAMSIZ ; 
 int /*<<< orphan*/  SYSPROTO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  g_OPT_IFNAME ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int s, char ifname[IFXNAMSIZ])
{
	socklen_t optlen = IFXNAMSIZ;
	T_QUIET; T_WITH_ERRNO; FUNC0(FUNC2(s, SYSPROTO_CONTROL, g_OPT_IFNAME, ifname, &optlen), NULL);
	T_QUIET; FUNC1(optlen > 0, NULL);
	T_QUIET; FUNC1(ifname[optlen-1] == '\0', NULL);
	T_QUIET; FUNC1(FUNC3(ifname)+1 == optlen, "got ifname \"%s\" len %zd expected %u", ifname, FUNC3(ifname), optlen);
}