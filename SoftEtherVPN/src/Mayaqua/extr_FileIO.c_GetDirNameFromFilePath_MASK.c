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
typedef  size_t UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*) ; 
 int FUNC4 (char*) ; 

void FUNC5(char *dst, UINT size, char *filepath)
{
	char tmp[MAX_SIZE];
	UINT wp;
	UINT i;
	UINT len;
	// Validate arguments
	if (dst == NULL || filepath == NULL)
	{
		return;
	}

	FUNC3(tmp, sizeof(tmp), filepath);
	if (FUNC0(tmp, "\\") || FUNC0(tmp, "/"))
	{
		tmp[FUNC4(tmp) - 1] = 0;
	}

	len = FUNC4(tmp);

	FUNC3(dst, size, "");

	wp = 0;

	for (i = 0;i < len;i++)
	{
		char c = tmp[i];
		if (c == '/' || c == '\\')
		{
			tmp[wp++] = 0;
			wp = 0;
			FUNC2(dst, size, tmp);
			tmp[wp++] = c;
		}
		else
		{
			tmp[wp++] = c;
		}
	}

	if (FUNC4(dst) == 0)
	{
		FUNC3(dst, size, "/");
	}

	FUNC1(dst, size, dst);
}