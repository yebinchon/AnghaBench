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
typedef  scalar_t__ wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,char*) ; 
 char* FUNC3 (int) ; 

void FUNC4(wchar_t *str, UINT str_size, void *data, UINT data_size)
{
	char *tmp;
	UINT tmp_size;
	// Validate arguments
	if (str == NULL || data == NULL)
	{
		if (str != NULL)
		{
			str[0] = 0;
		}
		return;
	}

	tmp_size = (data_size * 2 + 4) * sizeof(wchar_t);
	tmp = FUNC3(tmp_size);

	FUNC0(tmp, tmp_size, data, data_size);

	FUNC2(str, str_size, tmp);

	FUNC1(tmp);
}