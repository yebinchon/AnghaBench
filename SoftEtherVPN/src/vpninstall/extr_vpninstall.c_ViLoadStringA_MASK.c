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
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC3 (int) ; 

char *FUNC4(HINSTANCE hInst, UINT id)
{
	UINT tmp_size = 60000;
	char *tmp = FUNC3(tmp_size);
	char *ret = NULL;

	if (FUNC2(hInst, id, tmp, tmp_size) != 0)
	{
		ret = FUNC0(tmp);
	}

	FUNC1(tmp);

	return ret;
}