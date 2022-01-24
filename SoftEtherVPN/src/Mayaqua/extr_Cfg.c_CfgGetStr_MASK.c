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
typedef  int UINT ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

bool FUNC4(FOLDER *f, char *name, char *str, UINT size)
{
	wchar_t *tmp;
	UINT tmp_size;
	// Validate arguments
	if (f == NULL || name == NULL || str == NULL)
	{
		return false;
	}

	str[0] = 0;

	// Get unicode string temporarily
	tmp_size = size * 4 + 10; // Just to make sure, a quantity of this amount is secured.
	tmp = FUNC2(tmp_size);
	if (FUNC0(f, name, tmp, tmp_size) == false)
	{
		// Failure
		FUNC1(tmp);
		return false;
	}

	// Copy to the ANSI string
	FUNC3(str, size, tmp);
	FUNC1(tmp);

	return true;
}