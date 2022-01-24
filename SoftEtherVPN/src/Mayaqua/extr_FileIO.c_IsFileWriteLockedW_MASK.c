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
typedef  int /*<<< orphan*/  IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(wchar_t *name)
{
	IO *io;
	// Validate arguments
	if (name == NULL)
	{
		return false;
	}

	if (FUNC2(name) == false)
	{
		return false;
	}

	io = FUNC1(name, true);
	if (io == NULL)
	{
		return true;
	}

	FUNC0(io);

	return false;
}