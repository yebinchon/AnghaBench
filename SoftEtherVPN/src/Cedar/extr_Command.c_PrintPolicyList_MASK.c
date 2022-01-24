#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_19__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  policy_name ;
typedef  int /*<<< orphan*/  name2 ;
typedef  int /*<<< orphan*/  name1 ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,char*) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  DefaultValue; } ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_19__* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,scalar_t__) ; 
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC10 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,char*) ; 

void FUNC33(CONSOLE *c, char *name)
{
	UINT id;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}
	if (FUNC10(name))
	{
		name = NULL;
	}

	if (name != NULL)
	{
		id = FUNC13(name);
		if (id == INFINITE)
		{
			// Invalid ID
			c->Write(c, FUNC16("CMD_PolicyList_Invalid_Name"));
		}
		else
		{
			wchar_t tmp[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			char name1[64], name2[64];
			wchar_t *title, *descript;
			wchar_t policy_name[MAX_SIZE];

			FUNC5(name1, sizeof(name1), "POL_%u", id);
			FUNC5(name2, sizeof(name2), "POL_EX_%u", id);

			title = FUNC16(name1);
			descript = FUNC16(name2);

			FUNC14(policy_name, sizeof(policy_name), FUNC11(id));

			// Policy name
			c->Write(c, FUNC16("CMD_PolicyList_Help_1"));
			FUNC15(tmp2, sizeof(tmp2), L" %s", policy_name);
			c->Write(c, tmp2);
			c->Write(c, L"");

			// Simple description of the policy
			c->Write(c, FUNC16("CMD_PolicyList_Help_2"));
			FUNC15(tmp2, sizeof(tmp2), L" %s", title);
			c->Write(c, tmp2);
			c->Write(c, L"");

			// Range of the value that can be set
			FUNC9(tmp, sizeof(tmp), id);
			c->Write(c, FUNC16("CMD_PolicyList_Help_3"));
			FUNC15(tmp2, sizeof(tmp2), L" %s", tmp);
			c->Write(c, tmp2);
			c->Write(c, L"");

			// Default value
			FUNC6(tmp, sizeof(tmp), id, FUNC8(id)->DefaultValue);
			c->Write(c, FUNC16("CMD_PolicyList_Help_4"));
			FUNC15(tmp2, sizeof(tmp2), L" %s", tmp);
			c->Write(c, tmp2);
			c->Write(c, L"");

			// Detailed description of the policy
			c->Write(c, FUNC16("CMD_PolicyList_Help_5"));
			c->Write(c, descript);
			c->Write(c, L"");
		}
	}
	else
	{
		UINT i;
		CT *ct = FUNC4();
		FUNC3(ct, FUNC16("CMD_PolicyList_Column_1"), false);
		FUNC3(ct, FUNC16("CMD_PolicyList_Column_2"), false);

		// Show the list of all policies
		for (i = 0; i < FUNC12();i++)
		{
			char name[64];
			wchar_t *tmp;

			tmp = FUNC0(FUNC11(i));

			FUNC5(name, sizeof(name), "POL_%u", i);
			FUNC2(ct, tmp, FUNC16(name));

			FUNC7(tmp);
		}

		FUNC1(ct, c);
	}
}