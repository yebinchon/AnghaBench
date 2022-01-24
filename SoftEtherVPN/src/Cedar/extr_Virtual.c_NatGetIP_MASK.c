#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* ref; int /*<<< orphan*/  Ip; scalar_t__ Ok; int /*<<< orphan*/  Hostname; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ NAT_DNS_QUERY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  NAT_DNS_QUERY_TIMEOUT ; 
 int /*<<< orphan*/  NatGetIPThread ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int) ; 

bool FUNC13(IP *ip, char *hostname)
{
	TOKEN_LIST *t;
	bool ret = false;
	// Validate arguments
	if (ip == NULL || hostname == NULL)
	{
		return false;
	}

	t = FUNC7(hostname, ".");
	if (t == NULL)
	{
		return false;
	}
	if (t->NumTokens == 0)
	{
		FUNC3(t);
		return false;
	}

	if (t->NumTokens == 1)
	{
		ret = FUNC4(ip, hostname);
	}
	else
	{
		char *hostname2 = t->Token[0];
		NAT_DNS_QUERY *q1, *q2;
		THREAD *t1, *t2;

		q1 = FUNC12(sizeof(NAT_DNS_QUERY));
		q2 = FUNC12(sizeof(NAT_DNS_QUERY));
		q1->ref = FUNC5();
		q2->ref = FUNC5();
		FUNC0(q1->ref);
		FUNC0(q2->ref);
		FUNC10(q1->Hostname, sizeof(q1->Hostname), hostname);
		FUNC10(q2->Hostname, sizeof(q2->Hostname), hostname2);

		t1 = FUNC6(NatGetIPThread, q1);
		t2 = FUNC6(NatGetIPThread, q2);

		FUNC11(t1, NAT_DNS_QUERY_TIMEOUT);

		if (q1->Ok)
		{
			ret = true;
			FUNC1(ip, &q1->Ip, sizeof(IP));
		}
		else
		{
			FUNC11(t2, NAT_DNS_QUERY_TIMEOUT);
			if (q1->Ok)
			{
				ret = true;
				FUNC1(ip, &q1->Ip, sizeof(IP));
			}
			else if (q2->Ok)
			{
				ret = true;
				FUNC1(ip, &q2->Ip, sizeof(IP));
			}
		}

		FUNC9(t1);
		FUNC9(t2);

		if (FUNC8(q1->ref) == 0)
		{
			FUNC2(q1);
		}
		if (FUNC8(q2->ref) == 0)
		{
			FUNC2(q2);
		}
	}

	FUNC3(t);

	return ret;
}