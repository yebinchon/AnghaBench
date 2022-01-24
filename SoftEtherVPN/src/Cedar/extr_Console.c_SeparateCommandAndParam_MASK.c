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
typedef  int wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int* FUNC0 (int*) ; 
 char* FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int* FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

bool FUNC10(wchar_t *src, char **cmd, wchar_t **param)
{
	UINT i, len, wp;
	wchar_t *tmp;
	wchar_t *src_tmp;
	// Validate arguments
	if (src == NULL)
	{
		return false;
	}
	if (cmd != NULL)
	{
		*cmd = NULL;
	}
	if (param != NULL)
	{
		*param = NULL;
	}

	src_tmp = FUNC5(src);
	FUNC9(src_tmp);
	FUNC8(src_tmp);

	len = FUNC7(src_tmp);
	tmp = FUNC3(sizeof(wchar_t) * (len + 32));
	wp = 0;

	for (i = 0;i < (len + 1);i++)
	{
		wchar_t c = src_tmp[i];

		switch (c)
		{
		case 0:
		case L' ':
		case L'\t':
			tmp[wp] = 0;
			if (FUNC6(tmp))
			{
				FUNC2(tmp);
				FUNC2(src_tmp);
				return false;
			}
			if (cmd != NULL)
			{
				*cmd = FUNC1(tmp);
				FUNC4(*cmd);
			}
			goto ESCAPE;

		default:
			tmp[wp++] = c;
			break;
		}
	}

ESCAPE:
	if (param != NULL)
	{
		*param = FUNC0(&src_tmp[wp]);
		FUNC8(*param);
	}

	FUNC2(tmp);
	FUNC2(src_tmp);

	return true;
}