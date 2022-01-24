#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* ReadLine ) (TYPE_1__*,char*,int) ;int /*<<< orphan*/  (* Write ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*,int) ; 

wchar_t *FUNC4(CONSOLE *c, void *param)
{
	wchar_t *ret;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	c->Write(c, FUNC0("CMD_ClusterSettingMember_Prompt_IP_1"));
	c->Write(c, L"");

	ret = c->ReadLine(c, FUNC0("CMD_ClusterSettingMember_Prompt_IP_2"), true);

	return ret;
}