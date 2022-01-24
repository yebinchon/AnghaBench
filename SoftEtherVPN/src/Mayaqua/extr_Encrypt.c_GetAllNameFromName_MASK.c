#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * Country; int /*<<< orphan*/ * Local; int /*<<< orphan*/ * State; int /*<<< orphan*/ * Unit; int /*<<< orphan*/ * Organization; int /*<<< orphan*/ * CommonName; } ;
typedef  TYPE_1__ NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,char*) ; 
 int FUNC2 (int*) ; 

void FUNC3(wchar_t *str, UINT size, NAME *name)
{
	FUNC1(str, size, L"");
	// Validate arguments
	if (str == NULL || name == NULL)
	{
		return;
	}

	if (name->CommonName != NULL)
	{
		FUNC0(str, size, L"%sCN=%s, ", str, name->CommonName);
	}
	if (name->Organization != NULL)
	{
		FUNC0(str, size, L"%sO=%s, ", str, name->Organization);
	}
	if (name->Unit != NULL)
	{
		FUNC0(str, size, L"%sOU=%s, ", str, name->Unit);
	}
	if (name->State != NULL)
	{
		FUNC0(str, size, L"%sS=%s, ", str, name->State);
	}
	if (name->Local != NULL)
	{
		FUNC0(str, size, L"%sL=%s, ", str, name->Local);
	}
	if (name->Country != NULL)
	{
		FUNC0(str, size, L"%sC=%s, ", str, name->Country);
	}

	if (FUNC2(str) >= 3)
	{
		UINT len = FUNC2(str);
		if (str[len - 2] == L',' &&
			str[len - 1] == L' ')
		{
			str[len - 2] = 0;
		}
	}
}