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
typedef  size_t UINT ;
struct TYPE_7__ {int NumCa; TYPE_1__* Ca; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  Expires; int /*<<< orphan*/  IssuerName; int /*<<< orphan*/  SubjectName; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_HUB_ENUM_CA_ITEM ;
typedef  TYPE_2__ RPC_HUB_ENUM_CA ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (int) ; 

void FUNC7(RPC_HUB_ENUM_CA *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(RPC_HUB_ENUM_CA));
	FUNC3(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumCa = FUNC0(p, "Key");
	t->Ca = FUNC6(sizeof(RPC_HUB_ENUM_CA_ITEM) * t->NumCa);

	for (i = 0;i < t->NumCa;i++)
	{
		RPC_HUB_ENUM_CA_ITEM *e = &t->Ca[i];

		e->Key = FUNC2(p, "Key", i);
		FUNC4(p, "SubjectName", e->SubjectName, sizeof(e->SubjectName), i);
		FUNC4(p, "IssuerName", e->IssuerName, sizeof(e->IssuerName), i);
		e->Expires = FUNC1(p, "Expires", i);
	}
}