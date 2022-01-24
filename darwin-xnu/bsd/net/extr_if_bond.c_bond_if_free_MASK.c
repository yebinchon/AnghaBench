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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 scalar_t__ FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void 
FUNC5(struct ifnet * ifp)
{
    ifbond_ref 	ifb;

    if (ifp == NULL) {
	return;
    }
    FUNC0();
    ifb = (ifbond_ref)FUNC4(ifp);
    if (ifb == NULL) {
	FUNC1();
	return;
    }
    FUNC2(ifb);
    FUNC1();
    FUNC3(ifp);
    return;
}