#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  REMOTE_CLIENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(REMOTE_CLIENT *r, wchar_t *name, UINT size, wchar_t *old_name)
{
	UINT i;
	// Validate arguments
	if (r == NULL || name == NULL || old_name == NULL)
	{
		return;
	}

	for (i = 1;;i++)
	{
		wchar_t tmp[MAX_SIZE];
		if (i == 1)
		{
			FUNC1(tmp, sizeof(tmp), FUNC3("CM_IMPORT_NAME_1"), old_name);
		}
		else
		{
			FUNC1(tmp, sizeof(tmp), FUNC3("CM_IMPORT_NAME_2"), old_name, i);
		}

		if (FUNC0(r, tmp) == false)
		{
			FUNC2(name, size, tmp);
			return;
		}
	}
}