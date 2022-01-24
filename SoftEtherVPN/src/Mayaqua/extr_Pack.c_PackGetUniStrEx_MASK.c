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
typedef  scalar_t__ wchar_t ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALUE_UNISTR ; 

bool FUNC3(PACK *p, char *name, wchar_t *unistr, UINT size, UINT index)
{
	ELEMENT *e;
	// Validate arguments
	if (p == NULL || name == NULL || unistr == NULL || size == 0)
	{
		return false;
	}

	unistr[0] = 0;

	e = FUNC0(p, name, VALUE_UNISTR);
	if (e == NULL)
	{
		return false;
	}
	FUNC2(unistr, size, FUNC1(e, index));
	return true;
}