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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  ITEM ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

ITEM *FUNC5(FOLDER *f, char *name, char *str)
{
	wchar_t *tmp;
	UINT tmp_size;
	ITEM *t;
	// Validate arguments
	if (f == NULL || name == NULL || str == NULL)
	{
		return NULL;
	}

	// Convert to a Unicode string
	tmp_size = FUNC0(str);
	if (tmp_size == 0)
	{
		return NULL;
	}
	tmp = FUNC3(tmp_size);
	FUNC4(tmp, tmp_size, str);
	t = FUNC1(f, name, tmp);
	FUNC2(tmp);

	return t;
}