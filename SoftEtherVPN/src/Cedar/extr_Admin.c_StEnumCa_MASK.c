#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_18__ {int /*<<< orphan*/  notAfter; int /*<<< orphan*/  issuer_name; int /*<<< orphan*/  subject_name; } ;
typedef  TYPE_2__ X ;
typedef  size_t UINT ;
struct TYPE_23__ {TYPE_3__* Server; } ;
struct TYPE_22__ {TYPE_1__* HubDb; } ;
struct TYPE_21__ {char* HubName; int NumCa; TYPE_4__* Ca; } ;
struct TYPE_20__ {int /*<<< orphan*/  Expires; int /*<<< orphan*/  IssuerName; int /*<<< orphan*/  SubjectName; int /*<<< orphan*/  Key; } ;
struct TYPE_19__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_17__ {int /*<<< orphan*/ * RootCertList; } ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_HUB_ENUM_CA_ITEM ;
typedef  TYPE_5__ RPC_HUB_ENUM_CA ;
typedef  TYPE_6__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_FARM_CONTROLLER ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int) ; 
 TYPE_4__* FUNC13 (int) ; 

UINT FUNC14(ADMIN *a, RPC_HUB_ENUM_CA *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	NO_SUPPORT_FOR_BRIDGE;

	FUNC9(hubname, sizeof(hubname), t->HubName);

	FUNC0(t);
	FUNC12(t, sizeof(RPC_HUB_ENUM_CA));

	FUNC9(t->HubName, sizeof(t->HubName), hubname);
	CHECK_RIGHT;

	FUNC5(c);
	{
		h = FUNC2(c, hubname);
	}
	FUNC10(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC12(t, sizeof(RPC_HUB_ENUM_CA));
	FUNC9(t->HubName, sizeof(t->HubName), hubname);

	if (h->HubDb->RootCertList != NULL)
	{
		FUNC6(h->HubDb->RootCertList);
		{
			t->NumCa = FUNC4(h->HubDb->RootCertList);
			t->Ca = FUNC13(sizeof(RPC_HUB_ENUM_CA_ITEM) * t->NumCa);

			for (i = 0;i < t->NumCa;i++)
			{
				RPC_HUB_ENUM_CA_ITEM *e = &t->Ca[i];
				X *x = FUNC3(h->HubDb->RootCertList, i);

				e->Key = FUNC7(x);
				FUNC1(e->SubjectName, sizeof(e->SubjectName), x->subject_name);
				FUNC1(e->IssuerName, sizeof(e->IssuerName), x->issuer_name);
				e->Expires = x->notAfter;
			}
		}
		FUNC11(h->HubDb->RootCertList);
	}

	FUNC8(h);

	return ERR_NO_ERROR;
}