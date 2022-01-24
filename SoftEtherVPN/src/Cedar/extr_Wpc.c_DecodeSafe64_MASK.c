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
typedef  int UINT ;

/* Variables and functions */
 int FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 

UINT FUNC6(void *dst, char *src, UINT src_strlen)
{
	char *tmp;
	UINT ret;
	if (dst == NULL || src == NULL)
	{
		return 0;
	}

	if (src_strlen == 0)
	{
		src_strlen = FUNC5(src);
	}

	tmp = FUNC3(src_strlen + 1);
	FUNC1(tmp, src, src_strlen);
	tmp[src_strlen] = 0;
	FUNC4(tmp);

	ret = FUNC0(dst, tmp, src_strlen);
	FUNC2(tmp);

	return ret;
}