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
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/ * if_fake_ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(ifnet_t ifp)
{
	if_fake_ref	fakeif;

	FUNC2();
	fakeif = FUNC6(ifp);
	if (fakeif == NULL || FUNC1(fakeif)) {
		FUNC4();
		return (0);
	}
	FUNC3(fakeif);
	FUNC4();

	FUNC0(ifp, NULL);
	FUNC5(ifp);
	return 0;
}