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
typedef  int /*<<< orphan*/  VI_SETTING ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC3(VI_SETTING *set, char *filename)
{
	BUF *b;
	bool ret = false;
	// Validate arguments
	if (set == NULL || filename == NULL)
	{
		return false;
	}

	b = FUNC1(filename);
	if (b == NULL)
	{
		return false;
	}

	ret = FUNC2(set, b);

	FUNC0(b);

	return ret;
}