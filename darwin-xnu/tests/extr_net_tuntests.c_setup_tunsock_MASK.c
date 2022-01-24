#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct in_addr {void* s_addr; } ;
struct TYPE_7__ {void* s_addr; } ;

/* Variables and functions */
 int IFXNAMSIZ ; 
 int /*<<< orphan*/  SADB_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  cleanup_tunsock ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 TYPE_1__ g_addr1 ; 
 TYPE_1__ g_addr2 ; 
 scalar_t__ g_is_ipsec_test ; 
 int /*<<< orphan*/  g_tunsock ; 
 scalar_t__ FUNC5 () ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*,struct in_addr*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	FUNC0(g_tunsock = FUNC4(true, false, true), 0, NULL);
	FUNC1(cleanup_tunsock);

	char ifname[IFXNAMSIZ];
	FUNC8(g_tunsock, ifname);

	FUNC2("Created interface %s", ifname);

	uint32_t ifaddr = (10 << 24) | ((unsigned)FUNC5()&0xffff) << 8 | 160;
	struct in_addr mask;
	g_addr1.s_addr = FUNC6(ifaddr);
	g_addr2.s_addr = FUNC6(ifaddr+1);
	mask.s_addr = FUNC6(0xffffffff);

	FUNC7(ifname, &g_addr1, &mask, &g_addr2);

	if (g_is_ipsec_test) {
		FUNC3(ifname, SADB_ADD, 12345, &g_addr1, &g_addr2);
		FUNC3(ifname, SADB_ADD, 12346, &g_addr2, &g_addr1);
	}
}