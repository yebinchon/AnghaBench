#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_9__ {int Offline; int /*<<< orphan*/  ServerCert; void* CheckServerCert; } ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_1__ LINK ;
typedef  TYPE_2__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC14(FOLDER *f, HUB *h)
{
	bool online;
	CLIENT_OPTION *o;
	CLIENT_AUTH *a;
	FOLDER *pf;
	POLICY p;
	LINK *k;
	// Validate arguments
	if (f == NULL || h == NULL)
	{
		return;
	}

	pf = FUNC3(f, "Policy");
	if (pf == NULL)
	{
		return;
	}

	FUNC13(&p, pf);

	online = FUNC1(f, "Online");

	o = FUNC6(FUNC3(f, "ClientOption"));
	a = FUNC5(FUNC3(f, "ClientAuth"));
	if (o == NULL || a == NULL)
	{
		FUNC7(o);
		FUNC4(a);
		return;
	}

	k = FUNC9(h->Cedar, h, o, a, &p);
	if (k != NULL)
	{
		BUF *b;
		k->CheckServerCert = FUNC1(f, "CheckServerCert");
		b = FUNC2(f, "ServerCert");
		if (b != NULL)
		{
			k->ServerCert = FUNC0(b, false);
			FUNC8(b);
		}

		if (online)
		{
			k->Offline = true;
			FUNC12(k);
		}
		else
		{
			k->Offline = false;
			FUNC11(k);
		}
		FUNC10(k);
	}

	FUNC7(o);
	FUNC4(a);
}