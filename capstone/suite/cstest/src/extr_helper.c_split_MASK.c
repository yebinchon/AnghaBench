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

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char**,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

char **FUNC6(char *str, char *delim, int *size)
{
	char **result;
	char *token, *src;
	int cnt;

	cnt = 0;
	src = str;
	result = NULL;

	while ((token = FUNC5(src, delim)) != NULL) {
		result = (char **)FUNC2(result, sizeof(char *) * (cnt + 1));
		result[cnt] = (char *)FUNC0(1, sizeof(char) * (int)(token - src + 10));
		FUNC1(result[cnt], src, token - src);
		result[cnt][token - src] = '\0';
		src = token + FUNC4(delim);
		cnt ++;
	}

	if (FUNC4(src) > 0) {
		result = (char **)FUNC2(result, sizeof(char *) * (cnt + 1));
		result[cnt] = FUNC3(src);
		cnt ++;
	}

	*size = cnt;
	return result;
}