#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ServerName; char* HubName; int /*<<< orphan*/  Msg; } ;
typedef  TYPE_1__ UI_MSG_DLG ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

SOCK *FUNC9(UI_MSG_DLG *dlg)
{
	SOCK *s;
	PACK *p;
	char *utf;
	// Validate arguments
	if (dlg == NULL)
	{
		return NULL;
	}

	s = FUNC0(200);
	if (s == NULL)
	{
		return NULL;
	}

	p = FUNC4();
	FUNC6(p, "function", "msg_dialog");
	FUNC6(p, "ServerName", dlg->ServerName);
	FUNC6(p, "HubName", dlg->HubName);
	utf = FUNC1(dlg->Msg);
	FUNC5(p, "Msg", utf, FUNC8(utf));
	FUNC2(utf);

	FUNC7(s, p);
	FUNC3(p);

	return s;
}