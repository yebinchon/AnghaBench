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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* TAG_DECLARE ; 

void FUNC6(BUF *b, char *name, UINT depth)
{
	char *tmp;
	char *name2;
	UINT tmp_size;
	// Validate arguments
	if (b == NULL || name == NULL)
	{
		return;
	}

	name2 = FUNC1(name);

	tmp_size = FUNC5(name2) + 2 + FUNC5(TAG_DECLARE);
	tmp = FUNC4(tmp_size);

	FUNC2(tmp, 0, "%s %s", TAG_DECLARE, name2);
	FUNC0(b, tmp, depth);
	FUNC0(b, "{", depth);
	FUNC3(tmp);
	FUNC3(name2);
}