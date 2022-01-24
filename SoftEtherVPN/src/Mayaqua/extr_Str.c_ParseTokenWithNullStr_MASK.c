#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {scalar_t__ Buf; } ;
struct TYPE_9__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*,int) ; 
 void* FUNC14 (int) ; 

TOKEN_LIST *FUNC15(char *str, char *split_chars)
{
	LIST *o;
	UINT i, len;
	BUF *b;
	char zero = 0;
	TOKEN_LIST *t;
	// Validate arguments
	if (str == NULL)
	{
		return FUNC10();
	}
	if (split_chars == NULL)
	{
		split_chars = FUNC2();
	}

	b = FUNC8();
	o = FUNC9(NULL);

	len = FUNC12(str);

	for (i = 0;i < (len + 1);i++)
	{
		char c = str[i];
		bool flag = FUNC5(split_chars, c);

		if (c == '\0')
		{
			flag = true;
		}

		if (flag == false)
		{
			FUNC13(b, &c, sizeof(char));
		}
		else
		{
			FUNC13(b, &zero, sizeof(char));

			FUNC4(o, FUNC1((char *)b->Buf));
			FUNC0(b);
		}
	}

	t = FUNC14(sizeof(TOKEN_LIST));
	t->NumTokens = FUNC7(o);
	t->Token = FUNC14(sizeof(char *) * t->NumTokens);

	for (i = 0;i < t->NumTokens;i++)
	{
		t->Token[i] = FUNC6(o, i);
	}

	FUNC11(o);
	FUNC3(b);

	return t;
}