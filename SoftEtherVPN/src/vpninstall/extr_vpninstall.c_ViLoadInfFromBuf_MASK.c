#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Build; int Supported; int /*<<< orphan*/  Path; int /*<<< orphan*/  VpnCMgrExeFileName; } ;
struct TYPE_9__ {scalar_t__ VpnInstallBuild; TYPE_1__ x86; int /*<<< orphan*/  SettingPath; int /*<<< orphan*/  NormalMode; } ;
typedef  TYPE_2__ VI_SETTING ;
struct TYPE_10__ {int NumTokens; char** Token; } ;
typedef  TYPE_3__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_3__* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 

bool FUNC13(VI_SETTING *set, BUF *buf)
{
	bool ret;
	if (set == NULL || buf == NULL)
	{
		return false;
	}

	FUNC12(set, sizeof(VI_SETTING));

	FUNC6(buf, 0, 0);
	while (true)
	{
		char *tmp = FUNC0(buf);
		TOKEN_LIST *tokens;

		if (tmp == NULL)
		{
			break;
		}

		tokens = FUNC5(tmp, " \t");

		if (tokens != NULL)
		{
			if (tokens->NumTokens >= 2)
			{
				if (FUNC7(tokens->Token[0], "#") == false
					|| FUNC7(tokens->Token[0], "//") == false)
				{
					char *name, *value;
					name = tokens->Token[0];
					value = tokens->Token[1];

					if (FUNC8(name, "VpnInstallBuild") == 0)
					{
						set->VpnInstallBuild = FUNC11(value);
					}
					else if (FUNC8(name, "NormalMode") == 0)
					{
						set->NormalMode = FUNC10(value);
					}
					else if (FUNC8(name, "VpnSettingPath") == 0)
					{
						FUNC9(set->SettingPath, sizeof(set->SettingPath), value);
					}
					else if (FUNC8(name, "VpnClientBuild") == 0)
					{
						set->x86.Build = FUNC11(value);
					}
					else if (FUNC8(name, "VpnClientPath") == 0)
					{
						FUNC9(set->x86.Path, sizeof(set->x86.Path), value);
					}
				}
			}
			FUNC2(tokens);
		}

		FUNC1(tmp);
	}

	ret = false;

	FUNC9(set->x86.VpnCMgrExeFileName, sizeof(set->x86.VpnCMgrExeFileName), (FUNC4() ? "vpncmgr_x64.exe" : "vpncmgr.exe"));

	if (set->VpnInstallBuild != 0)
	{
		if (set->x86.Build != 0 && FUNC3(set->x86.Path) == false)
		{
			set->x86.Supported = true;
			ret = true;
		}
	}

	return ret;
}