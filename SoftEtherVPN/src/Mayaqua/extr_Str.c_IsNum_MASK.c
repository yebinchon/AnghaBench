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
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(char *str)
{
	char c;
	UINT i, len;
	UINT n = 0;
	char tmp[MAX_SIZE];
	TOKEN_LIST *t;
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), str);
	FUNC4(tmp);

	if (FUNC3(tmp) == 0)
	{
		return false;
	}

	t = FUNC1(tmp, " ");

	if (t->NumTokens >= 1)
	{
		FUNC2(tmp, sizeof(tmp), t->Token[0]);
	}

	FUNC0(t);

	len = FUNC3(tmp);
	for (i = 0;i < len;i++)
	{
		bool b = false;
		c = tmp[i];
		if (('0' <= c && c <= '9') || (c == '+') || (c == '-') || (c == ','))
		{
			b = true;
		}

		if (b == false)
		{
			return false;
		}
	}

	for (i = 0;i < len;i++)
	{
		c = tmp[i];
		if (c == '-')
		{
			n++;
		}
	}
	if (n >= 2)
	{
		return false;
	}

	return true;
}