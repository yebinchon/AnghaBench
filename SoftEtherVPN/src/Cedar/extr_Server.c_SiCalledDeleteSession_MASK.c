#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_8__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_7__ {int BridgeMode; int LinkModeServer; int SecureNATMode; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  HUB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  MAX_SESSION_NAME_LEN ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(SERVER *s, PACK *p)
{
	char name[MAX_SESSION_NAME_LEN + 1];
	char hubname[MAX_HUBNAME_LEN + 1];
	HUB *h;
	SESSION *sess;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	if (FUNC3(p, "HubName", hubname, sizeof(hubname)) == false)
	{
		return;
	}
	if (FUNC3(p, "SessionName", name, sizeof(name)) == false)
	{
		return;
	}

	FUNC2(s->Cedar);
	{
		h = FUNC0(s->Cedar, hubname);
	}
	FUNC7(s->Cedar);

	if (h == NULL)
	{
		return;
	}

	sess = FUNC1(h, name);

	if (sess != NULL)
	{
		if (sess->BridgeMode == false && sess->LinkModeServer == false && sess->SecureNATMode == false)
		{
			FUNC6(sess);
		}
		FUNC5(sess);
	}

	FUNC4(h);
}