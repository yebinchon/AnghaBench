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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  exe ;
struct TYPE_8__ {int /*<<< orphan*/  BuildInfo; int /*<<< orphan*/  VerString; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONSOLE ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC6(CONSOLE *c)
{
	CEDAR *cedar;
	wchar_t tmp[MAX_SIZE];
	char exe[MAX_PATH];
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	cedar = FUNC1(NULL, NULL);

	FUNC0(exe, sizeof(exe));

	FUNC3(tmp, sizeof(tmp), FUNC4("CMD_VPNCMD_ABOUT"),
		cedar->VerString, cedar->BuildInfo);

	c->Write(c, tmp);

	FUNC2(cedar);
}