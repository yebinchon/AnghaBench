#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {struct TYPE_13__* Str; void* LastSelectedTime; } ;
typedef  TYPE_1__ wchar_t ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ CANDIDATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 
 void* FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int) ; 

void FUNC10(LIST *o, wchar_t *str, UINT num_max)
{
	UINT i;
	bool exists;
	// Validate arguments
	if (o == NULL || str == NULL)
	{
		return;
	}
	if (num_max == 0)
	{
		num_max = 0x7fffffff;
	}

	// String copy
	str = FUNC6(str);
	FUNC8(str);

	exists = false;
	for (i = 0;i < FUNC4(o);i++)
	{
		CANDIDATE *c = FUNC3(o, i);
		if (FUNC7(c->Str, str) == 0)
		{
			// Update the time that an existing entry have been found
			c->LastSelectedTime = FUNC5();
			exists = true;
			break;
		}
	}

	if (exists == false)
	{
		// Insert new
		CANDIDATE *c = FUNC9(sizeof(CANDIDATE));
		c->LastSelectedTime = FUNC5();
		c->Str = FUNC6(str);
		FUNC2(o, c);
	}

	// Release the string
	FUNC1(str);

	// Check the current number of candidates.
	// If it is more than num_max, remove from an oldest candidate sequentially.
	if (FUNC4(o) > num_max)
	{
		while (FUNC4(o) > num_max)
		{
			UINT index = FUNC4(o) - 1;
			CANDIDATE *c = FUNC3(o, index);
			FUNC0(o, c);
			FUNC1(c->Str);
			FUNC1(c);
		}
	}
}