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
typedef  size_t UINT ;
struct TYPE_13__ {size_t Value; int /*<<< orphan*/  Name; } ;
struct TYPE_12__ {int /*<<< orphan*/  AdminOptionList; } ;
struct TYPE_11__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_3__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int) ; 

void FUNC11(HUB *h, FOLDER *f)
{
	TOKEN_LIST *t;
	// Validate arguments
	if (h == NULL || f == NULL)
	{
		return;
	}

	t = FUNC1(f);
	if (t != NULL)
	{
		UINT i;

		FUNC6(h->AdminOptionList);
		{
			FUNC3(h, false);

			for (i = 0;i < t->NumTokens;i++)
			{
				char *name = t->Token[i];
				ADMIN_OPTION *a;
				UINT value = FUNC2(f, name);;

				FUNC8(name);

				a = FUNC10(sizeof(ADMIN_OPTION));
				FUNC7(a->Name, sizeof(a->Name), name);
				a->Value = value;

				FUNC5(h->AdminOptionList, a);
			}

			FUNC0(h, false);
		}
		FUNC9(h->AdminOptionList);

		FUNC4(t);
	}
}