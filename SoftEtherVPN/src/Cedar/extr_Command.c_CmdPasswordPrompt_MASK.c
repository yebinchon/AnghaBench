#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* (* ReadPassword ) (TYPE_1__*,char*) ;int /*<<< orphan*/  (* Write ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 char* FUNC5 (TYPE_1__*,char*) ; 
 char* FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

char *FUNC9(CONSOLE *c)
{
	char *pw1, *pw2;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	c->Write(c, FUNC2("CMD_VPNCMD_PWPROMPT_0"));

RETRY:
	c->Write(c, L"");


	pw1 = c->ReadPassword(c, FUNC2("CMD_VPNCMD_PWPROMPT_1"));
	if (pw1 == NULL)
	{
		return NULL;
	}

	pw2 = c->ReadPassword(c, FUNC2("CMD_VPNCMD_PWPROMPT_2"));
	if (pw2 == NULL)
	{
		FUNC0(pw1);
		return NULL;
	}

	c->Write(c, L"");

	if (FUNC1(pw1, pw2) != 0)
	{
		FUNC0(pw1);
		FUNC0(pw2);
		c->Write(c, FUNC2("CMD_VPNCMD_PWPROMPT_3"));
		goto RETRY;
	}

	FUNC0(pw1);

	return pw2;
}