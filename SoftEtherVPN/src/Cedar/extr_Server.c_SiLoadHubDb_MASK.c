#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* HubDb; } ;
struct TYPE_6__ {int /*<<< orphan*/  AcList; int /*<<< orphan*/  CrlList; int /*<<< orphan*/  RootCertList; } ;
typedef  TYPE_2__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC6(HUB *h, FOLDER *f)
{
	// Validate arguments
	if (f == NULL || h == NULL)
	{
		return;
	}

	FUNC4(h, FUNC0(f, "GroupList"));
	FUNC5(h, FUNC0(f, "UserList"));

	if (h->HubDb != NULL)
	{
		FUNC2(h->HubDb->RootCertList, FUNC0(f, "CertList"));
		FUNC3(h->HubDb->CrlList, FUNC0(f, "CrlList"));
		FUNC1(h->HubDb->AcList, FUNC0(f, "IPAccessControlList"));
	}
}