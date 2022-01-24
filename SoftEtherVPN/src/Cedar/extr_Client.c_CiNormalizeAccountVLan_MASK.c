#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  lock; TYPE_1__* ClientOption; } ;
struct TYPE_12__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_11__ {int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(CLIENT *c)
{
	bool b = false;
	char *name;
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	name = FUNC0(c);

	if (name != NULL)
	{
		FUNC9(c->AccountList);
		{
			for (i = 0;i < FUNC7(c->AccountList);i++)
			{
				ACCOUNT *a = FUNC6(c->AccountList, i);

				FUNC8(a->lock);
				{
					if (a->ClientOption != NULL)
					{
						if (FUNC1(c, a->ClientOption->DeviceName) == false)
						{
							FUNC10(a->ClientOption->DeviceName, sizeof(a->ClientOption->DeviceName),
								name);
							b = true;
						}
					}
				}
				FUNC11(a->lock);
			}
		}
		FUNC12(c->AccountList);

		FUNC5(name);
	}

	if (b)
	{
		FUNC2(c);
		FUNC4(c);
		FUNC3(c);
	}
}