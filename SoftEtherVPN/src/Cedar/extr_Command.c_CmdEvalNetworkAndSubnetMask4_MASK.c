#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

bool FUNC6(CONSOLE *c, wchar_t *str, void *param)
{
	char tmp[MAX_SIZE];
	UINT ip, mask;
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), str);

	if (FUNC1(tmp, &ip, &mask) == false)
	{
		c->Write(c, FUNC3("CMD_PARSE_IP_SUBNET_ERROR_1"));
		return false;
	}

	if (FUNC0(ip, mask) == false)
	{
		c->Write(c, FUNC3("CMD_PARSE_IP_SUBNET_ERROR_2"));
		return false;
	}

	return true;
}