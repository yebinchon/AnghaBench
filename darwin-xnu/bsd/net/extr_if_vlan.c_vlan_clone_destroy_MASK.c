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
typedef  int /*<<< orphan*/ * ifvlan_ref ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/ * FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
    ifvlan_ref ifv;

    FUNC3();
    ifv = FUNC1(ifp);
    if (ifv == NULL) {
	FUNC5();
	return 0;
    }
    if (FUNC4(ifv, TRUE) == 0) {
	FUNC5();
	FUNC2(ifv);
	return 0;
    }
    FUNC5();
    FUNC2(ifv);
    FUNC0(ifp);

    return 0;
}