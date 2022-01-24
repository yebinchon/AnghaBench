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
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 

void FUNC8(BUF *b, UINT type, char *name, char *data, char *sub, UINT depth)
{
	char *tmp;
	char *name2;
	char *data2;
	char *sub2 = NULL;
	UINT tmp_size;
	// Validate arguments
	if (b == NULL || type == 0 || name == NULL || data == NULL)
	{
		return;
	}

	name2 = FUNC1(name);
	data2 = FUNC1(data);
	if (sub != NULL)
	{
		sub2 = FUNC1(sub);
	}

	tmp_size = FUNC7(name2) + FUNC7(data2) + 2 + 64 + 1;
	tmp = FUNC4(tmp_size);

	if (sub2 != NULL)
	{
		FUNC6(tmp, tmp_size, FUNC2(type));
		FUNC5(tmp, tmp_size, " ");
		FUNC5(tmp, tmp_size, name2);
		FUNC5(tmp, tmp_size, " ");
		FUNC5(tmp, tmp_size, data2);
		FUNC5(tmp, tmp_size, " ");
		FUNC5(tmp, tmp_size, sub2);
	}
	else
	{
		FUNC6(tmp, tmp_size, FUNC2(type));
		FUNC5(tmp, tmp_size, " ");
		FUNC5(tmp, tmp_size, name2);
		FUNC5(tmp, tmp_size, " ");
		FUNC5(tmp, tmp_size, data2);
	}

	FUNC3(name2);
	FUNC3(data2);
	if (sub2 != NULL)
	{
		FUNC3(sub2);
	}
	FUNC0(b, tmp, depth);
	FUNC3(tmp);
}