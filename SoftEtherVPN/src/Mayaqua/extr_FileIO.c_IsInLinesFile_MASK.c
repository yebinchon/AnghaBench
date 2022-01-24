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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(wchar_t *filename, char *str, bool instr)
{
	bool ret = false;
	BUF *b;
	// Validate arguments
	if (filename == NULL || str == NULL)
	{
		return false;
	}

	b = FUNC2(filename);
	if (b == NULL)
	{
		return false;
	}

	ret = FUNC1(b, str, instr);

	FUNC0(b);

	return ret;
}