#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
typedef  TYPE_1__ NAME ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

NAME *FUNC3(wchar_t *common_name, wchar_t *organization, wchar_t *unit,
			  wchar_t *country, wchar_t *state, wchar_t *local)
{
	NAME *nm = FUNC2(sizeof(NAME));

	if (FUNC1(common_name) == false)
	{
		nm->CommonName = FUNC0(common_name);
	}

	if (FUNC1(organization) == false)
	{
		nm->Organization = FUNC0(organization);
	}

	if (FUNC1(unit) == false)
	{
		nm->Unit = FUNC0(unit);
	}

	if (FUNC1(country) == false)
	{
		nm->Country = FUNC0(country);
	}

	if (FUNC1(state) == false)
	{
		nm->State = FUNC0(state);
	}

	if (FUNC1(local) == false)
	{
		nm->Local = FUNC0(local);
	}

	return nm;
}