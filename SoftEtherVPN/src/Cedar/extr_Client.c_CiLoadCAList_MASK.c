#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {int /*<<< orphan*/  CaList; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
struct TYPE_8__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CLIENT *c, FOLDER *f)
{
	CEDAR *cedar;
	TOKEN_LIST *t;
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	t = FUNC0(f);

	cedar = c->Cedar;

	FUNC4(cedar->CaList);
	{
		UINT i;
		for (i = 0;i < t->NumTokens;i++)
		{
			FOLDER *folder = FUNC1(f, t->Token[i]);
			FUNC2(c, folder);
		}
	}
	FUNC5(cedar->CaList);

	FUNC3(t);
}