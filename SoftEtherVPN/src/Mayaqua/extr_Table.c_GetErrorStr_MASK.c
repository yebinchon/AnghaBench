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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 

char *FUNC4(UINT err)
{
	char *ret;
	char name[MAX_SIZE];
	FUNC0(name, sizeof(name), "ERR_%u", err);

	ret = FUNC1(name);
	if (FUNC2(ret) != 0)
	{
		return ret;
	}
	else
	{
		return FUNC3("ERR_UNKNOWN");
	}
}