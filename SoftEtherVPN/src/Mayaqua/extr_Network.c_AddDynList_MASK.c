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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7(BUF *b)
{
	PACK *p;
	TOKEN_LIST *t;
	// Validate arguments
	if (b == NULL)
	{
		return;
	}

	FUNC5(b);

	p = FUNC0(b);
	if (p == NULL)
	{
		return;
	}

	t = FUNC3(p);
	if (t != NULL)
	{
		UINT i;

		for (i = 0;i < t->NumTokens;i++)
		{
			char *name = t->Token[i];
			UINT64 v = FUNC4(p, name);

			FUNC6(name, v);
		}

		FUNC2(t);
	}

	FUNC1(p);
}