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
typedef  size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 size_t INFINITE ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 TYPE_1__* FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*) ; 

JSON_VALUE *FUNC12(char *qs)
{
	TOKEN_LIST *t;
	UINT i;
	LIST *distinct_list = NULL;
	JSON_VALUE *v = NULL;
	JSON_OBJECT *o = NULL;
	if (qs == NULL)
	{
		return NULL;
	}

	t = FUNC9(qs, "&");
	if (t == NULL)
	{
		return NULL;
	}

	distinct_list = FUNC8();

	v = FUNC5();
	o = FUNC7(v);

	for (i = 0;i < t->NumTokens;i++)
	{
		char *token = t->Token[i];
		UINT pos;

		pos = FUNC10(token, "=", 0);
		if (pos != INFINITE)
		{
			char *key_decoded;
			char *value_decoded;
			char *key = FUNC1(token);
			char *value = FUNC1(token + pos + 1);

			key[pos] = 0;
			key_decoded = FUNC11(key);
			value_decoded = FUNC11(value);

			if (key_decoded != NULL && value_decoded != NULL)
			{
				if (FUNC0(distinct_list, key_decoded))
				{
					FUNC6(o, key_decoded, value_decoded);
				}
			}

			FUNC2(value_decoded);
			FUNC2(key_decoded);
			FUNC2(key);
			FUNC2(value);
		}
	}

	FUNC4(t);

	FUNC3(distinct_list);

	return v;
}