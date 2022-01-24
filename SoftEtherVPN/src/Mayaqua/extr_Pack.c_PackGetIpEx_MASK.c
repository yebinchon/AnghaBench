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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  ipv6_scope_id; } ;
typedef  TYPE_1__ UCHAR ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALUE_INT ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

bool FUNC10(PACK *p, char *name, IP *ip, UINT index)
{
	UINT i;
	char tmp[MAX_PATH];
	// Validate arguments
	if (p == NULL || ip == NULL || name == NULL)
	{
		return false;
	}

	FUNC0(tmp, sizeof(tmp), "%s@ipv6_bool", name);
	if (FUNC3(p, tmp, index))
	{
		UCHAR data[16];
		UINT scope_id;

		FUNC9(data, sizeof(data));

		FUNC0(tmp, sizeof(tmp), "%s@ipv6_array", name);
		FUNC4(p, tmp, data, sizeof(data), index);

		FUNC0(tmp, sizeof(tmp), "%s@ipv6_scope_id", name);
		scope_id = FUNC5(p, tmp, index);

		FUNC6(ip, data);
		ip->ipv6_scope_id = scope_id;
	}
	else
	{
		if (FUNC1(p, name, VALUE_INT) == NULL)
		{
			FUNC9(ip, sizeof(IP));
			return false;
		}

		i = FUNC5(p, name, index);

		if (FUNC2())
		{
			i = FUNC7(i);
		}

		FUNC8(ip, i);
	}

	return true;
}