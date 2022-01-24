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
typedef  int UINT ;

/* Variables and functions */
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 

void FUNC2(char *str, UINT size)
{
	// Validate arguments
	if (str == NULL)
	{
		char tmp[MAX_SIZE];
		FUNC1(tmp, sizeof(tmp) - 1, stdin);
		return;
	}
	if (size <= 1)
	{
		return;
	}

	// Read data from standard input
	FUNC1(str, (int)(size - 1), stdin);

	FUNC0(str);
}