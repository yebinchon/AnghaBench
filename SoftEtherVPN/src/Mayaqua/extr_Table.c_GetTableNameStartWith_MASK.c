#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {size_t NumTokens; void** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ TABLE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * TableList ; 
 void* FUNC11 (int) ; 

TOKEN_LIST *FUNC12(char *str)
{
	UINT i;
	UINT len;
	LIST *o;
	TOKEN_LIST *t;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (str == NULL)
	{
		return FUNC6();
	}

	FUNC8(tmp, sizeof(tmp), str);
	FUNC10(tmp);

	len = FUNC9(tmp);

	o = FUNC5(NULL);

	for (i = 0;i < FUNC4(TableList);i++)
	{
		TABLE *t = FUNC3(TableList, i);
		UINT len2 = FUNC9(t->name);

		if (len2 >= len)
		{
			if (FUNC0(t->name, tmp, len) == 0)
			{
				FUNC2(o, FUNC1(t->name));
			}
		}
	}

	t = FUNC11(sizeof(TOKEN_LIST));
	t->NumTokens = FUNC4(o);
	t->Token = FUNC11(sizeof(char *) * t->NumTokens);

	for (i = 0;i < t->NumTokens;i++)
	{
		t->Token[i] = FUNC3(o, i);
	}

	FUNC7(o);

	return t;
}