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
typedef  int UINT ;
typedef  int /*<<< orphan*/  HTTP_VALUE ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int INFINITE ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 

bool FUNC9(HTTP_HEADER* header, char *string)
{
	HTTP_VALUE *value = NULL;
	UINT pos = 0;
	char *value_name = NULL;
	char *value_data = NULL;

	// Validate arguments
	if (header == NULL || FUNC4(string))
	{
		return false;
	}

	// Sanitize string
	FUNC2(string, ' ');

	// Get the position of the colon
	pos = FUNC7(string, ":", 0);
	if (pos == INFINITE)
	{
		// The colon does not exist
		return false;
	}

	if ((pos + 1) >= FUNC8(string))
	{
		// There is no data
		return false;
	}

	// Divide into the name and the data
	value_name = FUNC5(pos + 1);
	FUNC1(value_name, string, pos);
	value_name[pos] = 0;
	value_data = &string[pos + 1];

	value = FUNC6(value_name, value_data);
	if (value == NULL)
	{
		FUNC3(value_name);
		return false;
	}

	FUNC3(value_name);

	FUNC0(header, value);

	return true;
}