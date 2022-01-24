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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  VALUE ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  ELEMENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MAX_ELEMENT_NAME_LEN ; 
 int MAX_VALUE_NUM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

ELEMENT *FUNC6(BUF *b)
{
	UINT i;
	char name[MAX_ELEMENT_NAME_LEN + 1];
	UINT type, num_value;
	VALUE **values;
	ELEMENT *e;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	// Name
	if (FUNC4(b, name, sizeof(name)) == false)
	{
		return NULL;
	}

	// Type of item
	type = FUNC3(b);

	// Number of items
	num_value = FUNC3(b);
	if (num_value > MAX_VALUE_NUM)
	{
		// Number exceeds
		return NULL;
	}

	// VALUE
	values = (VALUE **)FUNC1(sizeof(VALUE *) * num_value);
	for (i = 0;i < num_value;i++)
	{
		values[i] = FUNC5(b, type);
	}

	// Create a ELEMENT
	e = FUNC2(name, type, num_value, values);

	FUNC0(values);

	return e;
}