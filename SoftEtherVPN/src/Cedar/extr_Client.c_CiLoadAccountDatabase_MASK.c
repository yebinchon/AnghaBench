#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_6__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CLIENT ;
typedef  int /*<<< orphan*/  ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CLIENT *c, FOLDER *f)
{
	TOKEN_LIST *t;
	UINT i;
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	t = FUNC1(f);
	if (t == NULL)
	{
		return;
	}

	for (i = 0;i < t->NumTokens;i++)
	{
		FOLDER *ff = FUNC2(f, t->Token[i]);

		if (ff != NULL)
		{
			ACCOUNT *a = FUNC3(ff);
			if (a != NULL)
			{
				{
					FUNC0(c->AccountList, a);
				}
			}
		}
	}

	FUNC5(c->AccountList);

	FUNC4(t);
}