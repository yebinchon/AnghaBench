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
typedef  int /*<<< orphan*/ * ifbond_ref ;

/* Variables and functions */
 scalar_t__ IFT_IEEE8023ADLAG ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct ifnet*) ; 
 scalar_t__ FUNC6 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet * ifp)
{
    ifbond_ref ifb;

    FUNC1();
    ifb = FUNC5(ifp);
    if (ifb == NULL || FUNC6(ifp) != IFT_IEEE8023ADLAG) {
	FUNC3();
	return 0;
    }
    if (FUNC4(ifb)) {
	FUNC3();
	return 0;
    }
    FUNC2(ifb);
    FUNC3();
    FUNC0(ifp);
    return 0;
}