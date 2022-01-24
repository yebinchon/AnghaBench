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
typedef  int /*<<< orphan*/  LOG ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StringRecordParseProc ; 

void FUNC2(LOG *g, char *str)
{
	char *str_copy;
	// Validate arguments
	if (g == NULL || str == NULL)
	{
		return;
	}

	str_copy = FUNC0(str);

	FUNC1(g, str_copy, StringRecordParseProc);
}