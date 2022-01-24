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
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  lacp_system_ref ;
typedef  int /*<<< orphan*/  ifname ;
typedef  int /*<<< orphan*/ * bond_globals_ref ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  M_BOND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * g_bond ; 
 struct ifnet* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC8(void)
{
    bond_globals_ref	b;
    int			i;
    struct ifnet * 	ifp;

    FUNC2();

    if (g_bond != NULL) {
	return (0);
    }

    /*
     * use en0's ethernet address as the system identifier, and if it's not
     * there, use en1 .. en3
     */
    ifp = NULL;
    for (i = 0; i < 4; i++) {
	char 		ifname[IFNAMSIZ+1];
	FUNC7(ifname, sizeof(ifname), "en%d", i);
	ifp = FUNC6(ifname);
	if (ifp != NULL) {
	    break;
	}
    }
    b = NULL;
    if (ifp != NULL) {
	b = FUNC3(0x8000, (lacp_system_ref)FUNC0(ifp));
    }
    FUNC4();
    if (g_bond != NULL) {
	FUNC5();
	FUNC1(b, M_BOND);
	return (0);
    }
    g_bond = b;
    FUNC5();
    if (ifp == NULL) {
	return (ENXIO);
    }
    if (b == NULL) {
	return (ENOMEM);
    }
    return (0);
}