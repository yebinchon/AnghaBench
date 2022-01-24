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
typedef  int /*<<< orphan*/  user_name_upper ;
typedef  int /*<<< orphan*/  ticket_str ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hub_name_upper ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  NumSessions; scalar_t__ Point; int /*<<< orphan*/  hostname; } ;
struct TYPE_6__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SESSION_NAME_LEN ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(SERVER *s, FARM_MEMBER *f, char *hubname, char *username, char *realusername, POLICY *policy, UCHAR *ticket, UINT counter, char *groupname)
{
	PACK *p;
	char name[MAX_SESSION_NAME_LEN + 1];
	char hub_name_upper[MAX_SIZE];
	char user_name_upper[MAX_USERNAME_LEN + 1];
	char ticket_str[MAX_SIZE];
	UINT point;
	// Validate arguments
	if (s == NULL || f == NULL || realusername == NULL || hubname == NULL || username == NULL || policy == NULL || ticket == NULL)
	{
		return;
	}
	if (groupname == NULL)
	{
		groupname = "";
	}

	p = FUNC3();
	FUNC6(p, "HubName", hubname);
	FUNC6(p, "UserName", username);
	FUNC6(p, "groupname", groupname);
	FUNC6(p, "RealUserName", realusername);
	FUNC4(p, policy);
	FUNC5(p, "Ticket", ticket, SHA1_SIZE);

	FUNC0(ticket_str, sizeof(ticket_str), ticket, SHA1_SIZE);

	FUNC10(hub_name_upper, sizeof(hub_name_upper), hubname);
	FUNC11(hub_name_upper);
	FUNC10(user_name_upper, sizeof(user_name_upper), username);
	FUNC11(user_name_upper);
	FUNC1(name, sizeof(name), "SID-%s-%u", user_name_upper,
		counter);
	FUNC6(p, "SessionName", name);

	p = FUNC9(f, p, "createticket");

	FUNC8(s->Cedar, "LS_TICKET_1", f->hostname, hubname, username, realusername, name, ticket_str);

	point = FUNC7(p, "Point");
	if (point != 0)
	{
		f->Point = point;
		f->NumSessions++;
	}

	FUNC2(p);
}