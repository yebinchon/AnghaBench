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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

bool FUNC3(wchar_t *name, void *data, UINT size)
{
	IO *io;
	// Validate arguments
	if (name == NULL || (data == NULL && size != 0))
	{
		return false;
	}

	io = FUNC1(name);
	if (io == NULL)
	{
		return false;
	}

	if (FUNC2(io, data, size) == false)
	{
		FUNC0(io);
		return false;
	}

	FUNC0(io);

	return true;
}