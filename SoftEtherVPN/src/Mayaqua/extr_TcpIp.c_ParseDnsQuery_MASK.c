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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  tmp ;
typedef  char USHORT ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

bool FUNC11(char *name, UINT name_size, void *data, UINT data_size)
{
	BUF *b;
	char tmp[257];
	bool ok = true;
	USHORT val;
	// Validate arguments
	if (name == NULL || data == NULL || data_size == 0)
	{
		return false;
	}
	FUNC7(name, name_size, "");

	b = FUNC3();
	FUNC9(b, data, data_size);
	FUNC5(b, 0, 0);

	while (true)
	{
		UINT next_len = (UINT)FUNC2(b);
		if (next_len > 0)
		{
			// Read only the specified length
			FUNC10(tmp, sizeof(tmp));
			if (FUNC4(b, tmp, next_len) != next_len)
			{
				ok = false;
				break;
			}
			// Append
			if (FUNC8(name) != 0)
			{
				FUNC6(name, name_size, ".");
			}
			FUNC6(name, name_size, tmp);
		}
		else
		{
			// Read all
			break;
		}
	}

	if (FUNC4(b, &val, sizeof(val)) != sizeof(val))
	{
		ok = false;
	}
	else
	{
		if (FUNC0(val) != 0x01 && FUNC0(val) != 0x0c)
		{
			ok = false;
		}
	}

	if (FUNC4(b, &val, sizeof(val)) != sizeof(val))
	{
		ok = false;
	}
	else
	{
		if (FUNC0(val) != 0x01)
		{
			ok = false;
		}
	}

	FUNC1(b);

	if (ok == false || FUNC8(name) == 0)
	{
		return false;
	}
	else
	{
		return true;
	}
}