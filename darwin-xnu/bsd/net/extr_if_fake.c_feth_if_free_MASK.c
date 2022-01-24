#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/ * if_fake_ref ;
struct TYPE_5__ {int /*<<< orphan*/ * if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void 
FUNC5(ifnet_t ifp)
{
	if_fake_ref		fakeif;

	if (ifp == NULL) {
		return;
	}
	FUNC0();
	fakeif = FUNC3(ifp);
	if (fakeif == NULL) {
		FUNC2();
		return;
	}
	ifp->if_softc = NULL;
	FUNC2();
	FUNC1(fakeif);
	FUNC4(ifp);
	return;
}