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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {char* CommonName; char* Organization; char* Unit; char* State; char* Local; char* Country; } ;
typedef  TYPE_1__ NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC1(wchar_t *str, UINT size, NAME *name)
{
	// Validate arguments
	if (str == NULL || name == NULL)
	{
		return;
	}

	if (name->CommonName != NULL)
	{
		FUNC0(str, size, name->CommonName);
	}
	else if (name->Organization != NULL)
	{
		FUNC0(str, size, name->Organization);
	}
	else if (name->Unit != NULL)
	{
		FUNC0(str, size, name->Unit);
	}
	else if (name->State != NULL)
	{
		FUNC0(str, size, name->State);
	}
	else if (name->Local != NULL)
	{
		FUNC0(str, size, name->Local);
	}
	else if (name->Country != NULL)
	{
		FUNC0(str, size, name->Country);
	}
	else
	{
		FUNC0(str, size, L"untitled");
	}
}