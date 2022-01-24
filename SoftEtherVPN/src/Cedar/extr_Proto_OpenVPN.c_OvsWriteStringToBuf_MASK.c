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
typedef  char USHORT ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC8(BUF *b, char *str, UINT max_size)
{
	USHORT us;
	UINT i;
	char *tmp;
	// Validate arguments
	if (b == NULL)
	{
		return;
	}
	if (str == NULL)
	{
		str = "";
	}

	if (FUNC5(str) == 0)
	{
		us = 0;
		FUNC7(b, &us, sizeof(USHORT));
		return;
	}

	i = FUNC6(str);
	i = FUNC3(i, max_size);
	us = FUNC1((USHORT)i);
	FUNC7(b, &us, sizeof(USHORT));

	tmp = FUNC4(i);
	FUNC0(tmp, str, i);
	tmp[i - 1] = 0;
	FUNC7(b, tmp, i);

	FUNC2(tmp);
}