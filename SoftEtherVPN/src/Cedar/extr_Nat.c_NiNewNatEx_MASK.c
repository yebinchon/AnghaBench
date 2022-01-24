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
typedef  int /*<<< orphan*/  VH_OPTION ;
struct TYPE_6__ {int Online; int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * Virtual; int /*<<< orphan*/  Option; int /*<<< orphan*/ * ClientAuth; int /*<<< orphan*/ * ClientOption; int /*<<< orphan*/ * SecureNAT; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  SNAT ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

NAT *FUNC6(SNAT *snat, VH_OPTION *o)
{
	NAT *n = FUNC5(sizeof(NAT));

	n->lock = FUNC1();
	FUNC4(n->HashedPassword, "", 0);
	n->HaltEvent = FUNC0();

	//n->Cedar = NewCedar(NULL, NULL);

	n->SecureNAT = snat;

	// Raise the priority
	//OSSetHighPriority();

	// Initialize the settings
	FUNC3(n);

#if	0
	// Start the operation of the virtual host
	if (n->Online && n->ClientOption != NULL)
	{
		n->Virtual = NewVirtualHostEx(n->Cedar, n->ClientOption, n->ClientAuth, &n->Option, n);
	}
	else
	{
		n->Online = false;
		n->Virtual = NULL;
	}
#else
	n->Virtual = FUNC2(n->Cedar, NULL, NULL, o, n);
	n->Online = true;
#endif

	// Start management command
	//NiInitAdminAccept(n);

	return n;
}