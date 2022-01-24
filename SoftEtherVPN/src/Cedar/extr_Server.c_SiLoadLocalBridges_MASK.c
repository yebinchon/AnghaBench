#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(SERVER *s, FOLDER *f)
{
	TOKEN_LIST *t;
	UINT i;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	Win32EthSetShowAllIf(CfgGetBool(f, "ShowAllInterfaces"));
#endif	// OS_WIN32

#ifdef	UNIX_LINUX
	SetGlobalServerFlag(GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD, CfgGetBool(f, "DoNotDisableOffloading"));
#endif	// UNIX_LINUX

	t = FUNC0(f);

	for (i = 0;i < t->NumTokens;i++)
	{
		char *name = t->Token[i];

		FUNC5(s, FUNC2(f, name));
	}

	FUNC3(t);
}