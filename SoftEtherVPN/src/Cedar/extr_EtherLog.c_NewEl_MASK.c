#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  AutoDeleteCheckDiskFreeSpaceMin; int /*<<< orphan*/  Eraser; int /*<<< orphan*/  LicenseStatus; int /*<<< orphan*/  LicenseSystem; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* FUNC9 (int) ; 

EL *FUNC10()
{
	EL *e;

#ifdef OS_WIN32
	RegistWindowsFirewallAll();
#endif

	e = FUNC9(sizeof(EL));
	e->lock = FUNC6();
	e->ref = FUNC7();

	e->Cedar = FUNC4(NULL, NULL);


	// Ethernet initialization
	FUNC3();

	// Setting initialization
	FUNC0(e);

	// Listener start
	FUNC2(e);

	// Initialize the license status
	FUNC1(e->LicenseSystem, e->LicenseStatus);

	// Eraser start
	e->Eraser = FUNC5(NULL, e->AutoDeleteCheckDiskFreeSpaceMin);

	return e;
}