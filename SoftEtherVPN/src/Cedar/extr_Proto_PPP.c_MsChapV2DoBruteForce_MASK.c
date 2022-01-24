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
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IPC_MSCHAP_V2_AUTHINFO ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

char *FUNC9(IPC_MSCHAP_V2_AUTHINFO *d, LIST *password_list)
{
	UINT i;
	// Validate arguments
	if (d == NULL || password_list == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC2(password_list);i++)
	{
		char *s = FUNC1(password_list, i);
		char tmp[MAX_SIZE];
		UINT j, max;
		UINT len;

		FUNC7(tmp, sizeof(tmp), s);

		len = FUNC8(tmp);
		max = FUNC5(2, FUNC3(len, 9));

		for (j = 0;j < max;j++)
		{
			FUNC6(tmp, j);
			if (FUNC4(d, tmp))
			{
				return FUNC0(tmp);
			}
		}
	}

	return NULL;
}