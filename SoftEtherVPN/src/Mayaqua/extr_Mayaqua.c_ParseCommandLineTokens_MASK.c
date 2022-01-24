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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdline ; 
 int /*<<< orphan*/ * cmdline_token ; 
 int /*<<< orphan*/ * cmdline_uni_token ; 
 int /*<<< orphan*/  uni_cmdline ; 

void FUNC4()
{
	if (cmdline_token != NULL)
	{
		FUNC0(cmdline_token);
	}
	cmdline_token = FUNC1(cmdline);

	if (cmdline_uni_token != NULL)
	{
		FUNC2(cmdline_uni_token);
	}
	cmdline_uni_token = FUNC3(uni_cmdline);
}