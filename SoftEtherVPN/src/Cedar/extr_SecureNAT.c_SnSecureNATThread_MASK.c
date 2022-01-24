#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  ref; } ;
struct TYPE_28__ {TYPE_5__* Session; int /*<<< orphan*/  Protocol; } ;
struct TYPE_27__ {int /*<<< orphan*/  ref; } ;
struct TYPE_26__ {int NoBroadcastLimiter; } ;
struct TYPE_25__ {int SecureNATMode; int /*<<< orphan*/  Hub; TYPE_9__* Cancel1; int /*<<< orphan*/  ref; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; TYPE_4__* SecureNAT; } ;
struct TYPE_24__ {TYPE_3__* Nat; TYPE_5__* Session; TYPE_7__* Hub; int /*<<< orphan*/  Cedar; } ;
struct TYPE_23__ {TYPE_2__* Virtual; } ;
struct TYPE_22__ {TYPE_1__* NativeNat; TYPE_9__* Cancel; } ;
struct TYPE_21__ {int /*<<< orphan*/  CancelLock; TYPE_9__* Cancel; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_4__ SNAT ;
typedef  TYPE_5__ SESSION ;
typedef  TYPE_6__ POLICY ;
typedef  TYPE_7__ HUB ;
typedef  TYPE_8__ CONNECTION ;
typedef  TYPE_9__ CANCEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTION_HUB_SECURE_NAT ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  SNAT_USER_NAME ; 
 int /*<<< orphan*/  SNAT_USER_NAME_PRINT ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(THREAD *t, void *param)
{
	SNAT *s;
	CONNECTION *c;
	SESSION *se;
	POLICY *policy;
	HUB *h;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	s = (SNAT *)param;
	// Create a server connection
	c = FUNC7(s->Cedar, NULL, t);
	c->Protocol = CONNECTION_HUB_SECURE_NAT;

	// Apply the default policy
	policy = FUNC1(FUNC4());

	// Not to limit the number of broadcast
	policy->NoBroadcastLimiter = true;

	h = s->Hub;
	FUNC0(h->ref);

	// create a server session
	se = FUNC8(s->Cedar, c, s->Hub, SNAT_USER_NAME, policy);
	se->SecureNATMode = true;
	se->SecureNAT = s;
	c->Session = se;
	FUNC11(c);

	FUNC5(se->Hub, "LH_NAT_START", se->Name);

	// User name
	se->Username = FUNC2(SNAT_USER_NAME_PRINT);

	s->Session = se;
	FUNC0(se->ref);

	// Notification initialization completion
	FUNC9(t);

	FUNC10(s->Nat->Virtual->Cancel);
	s->Nat->Virtual->Cancel = se->Cancel1;
	FUNC0(se->Cancel1->ref);

	if (s->Nat->Virtual->NativeNat != NULL)
	{
		CANCEL *old_cancel = NULL;

		FUNC6(s->Nat->Virtual->NativeNat->CancelLock);
		{
			if (s->Nat->Virtual->NativeNat->Cancel != NULL)
			{
				old_cancel = s->Nat->Virtual->NativeNat->Cancel;

				s->Nat->Virtual->NativeNat->Cancel = se->Cancel1;

				FUNC0(se->Cancel1->ref);
			}
		}
		FUNC15(s->Nat->Virtual->NativeNat->CancelLock);

		if (old_cancel != NULL)
		{
			FUNC10(old_cancel);
		}
	}

	// Main function of the session
	FUNC3("SecureNAT Start.\n");
	FUNC14(se);
	FUNC3("SecureNAT Stop.\n");

	FUNC5(se->Hub, "LH_NAT_STOP");

	FUNC12(h);

	FUNC13(se);
}