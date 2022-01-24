#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  notAfter; int /*<<< orphan*/  issuer_name; int /*<<< orphan*/  subject_name; } ;
typedef  TYPE_3__ X ;
typedef  size_t UINT ;
struct TYPE_15__ {TYPE_2__* Cedar; } ;
struct TYPE_14__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_12__ {int /*<<< orphan*/  CaList; } ;
struct TYPE_11__ {int /*<<< orphan*/  Key; int /*<<< orphan*/  Expires; int /*<<< orphan*/  IssuerName; int /*<<< orphan*/  SubjectName; } ;
typedef  int /*<<< orphan*/  RPC_CLIENT_ENUM_CA_ITEM ;
typedef  TYPE_4__ RPC_CLIENT_ENUM_CA ;
typedef  TYPE_5__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 void* FUNC7 (int) ; 

bool FUNC8(CLIENT *c, RPC_CLIENT_ENUM_CA *e)
{
	// Validate arguments
	if (c == NULL || e == NULL)
	{
		return false;
	}

	FUNC6(e, sizeof(RPC_CLIENT_ENUM_CA));

	FUNC3(c->Cedar->CaList);
	{
		UINT i;
		e->NumItem = FUNC2(c->Cedar->CaList);
		e->Items = FUNC7(sizeof(RPC_CLIENT_ENUM_CA_ITEM *) * e->NumItem);

		for (i = 0;i < e->NumItem;i++)
		{
			X *x = FUNC1(c->Cedar->CaList, i);
			e->Items[i] = FUNC7(sizeof(RPC_CLIENT_ENUM_CA_ITEM));
			FUNC0(e->Items[i]->SubjectName, sizeof(e->Items[i]->SubjectName), x->subject_name);
			FUNC0(e->Items[i]->IssuerName, sizeof(e->Items[i]->IssuerName), x->issuer_name);
			e->Items[i]->Expires = x->notAfter;
			e->Items[i]->Key = FUNC4(x);
		}
	}
	FUNC5(c->Cedar->CaList);

	return true;
}