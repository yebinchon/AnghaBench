#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  title ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Value; scalar_t__ Name; } ;
struct TYPE_8__ {int /*<<< orphan*/  CapsList; } ;
struct TYPE_7__ {int /*<<< orphan*/  Rpc; } ;
typedef  TYPE_1__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;
typedef  TYPE_2__ CAPSLIST ;
typedef  TYPE_3__ CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 scalar_t__ FUNC11 (scalar_t__,char*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	CAPSLIST *t;
	UINT i;
	CT *ct;


	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	t = FUNC9(ps->Rpc);

	ct = FUNC2();

	for (i = 0;i < FUNC7(t->CapsList);i++)
	{
		CAPS *c = FUNC6(t->CapsList, i);
		wchar_t title[MAX_SIZE];
		char name[256];

		FUNC3(name, sizeof(name), "CT_%s", c->Name);

		FUNC15(title, sizeof(title), FUNC17(name));

		if (FUNC14(title))
		{
			FUNC13(title, sizeof(title), L"%S", (FUNC12(c->Name) >= 2) ? c->Name + 2 : c->Name);
		}

		if (FUNC10(c->Name, "b_"))
		{
			bool icon_pass = c->Value == 0 ? false : true;
			if (FUNC11(c->Name, "b_must_install_pcap") == 0)
			{
				// Reverse only item of WinPcap
				icon_pass = !icon_pass;
			}
			FUNC1(ct, title, c->Value == 0 ? FUNC17("CAPS_NO") : FUNC17("CAPS_YES"));
		}
		else
		{
			wchar_t str[64];
			FUNC16(str, c->Value);
			FUNC1(ct, title, str);
		}
	}

	FUNC0(ct, c);

	FUNC4(t);

	FUNC5(o);

	return 0;
}