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
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  AccountList; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT ;
typedef  TYPE_2__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(CLIENT *c, FOLDER *f)
{
	char name[MAX_SIZE];
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	FUNC6(c->AccountList);
	{
		UINT i;
		for (i = 0;i < FUNC4(c->AccountList);i++)
		{
			ACCOUNT *a = FUNC3(c->AccountList, i);

			{
				FUNC2(name, sizeof(name), "Account%u", i);
				FUNC5(a->lock);
				{
					FUNC1(FUNC0(f, name), a);
				}
				FUNC7(a->lock);
			}
		}
	}
	FUNC8(c->AccountList);
}