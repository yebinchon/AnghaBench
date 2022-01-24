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
typedef  int UINT ;
struct TYPE_3__ {void* UnicodeValue; void* Value; void* Key; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ INI_ENTRY ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int) ; 

LIST *FUNC14(BUF *b)
{
	LIST *o;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	o = FUNC7(NULL);

	FUNC8(b, 0, 0);

	while (true)
	{
		char *line = FUNC2(b);

		if (line == NULL)
		{
			break;
		}

		FUNC11(line);

		if (FUNC6(line) == false)
		{
			if (FUNC9(line, "#") == false &&
				FUNC9(line, "//") == false &&
				FUNC9(line, ";") == false)
			{
				char *key, *value;
				UINT size = FUNC10(line) + 1;

				key = FUNC13(size);
				value = FUNC13(size);

				if (FUNC5(line, key, size, value, size, NULL))
				{
					UINT uni_size;
					INI_ENTRY *e = FUNC13(sizeof(INI_ENTRY));
					e->Key = FUNC3(key);
					e->Value = FUNC3(value);

					uni_size = FUNC1((BYTE *)value, FUNC10(value));
					e->UnicodeValue = FUNC13(uni_size);
					FUNC12(e->UnicodeValue, uni_size, (BYTE *)value, FUNC10(value));

					FUNC0(o, e);
				}

				FUNC4(key);
				FUNC4(value);
			}
		}

		FUNC4(line);
	}

	return o;
}