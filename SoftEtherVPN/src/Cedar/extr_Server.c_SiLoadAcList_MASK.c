#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ac ;
typedef  size_t UINT ;
struct TYPE_8__ {int Masked; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  Priority; int /*<<< orphan*/  Deny; } ;
struct TYPE_7__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

void FUNC10(LIST *o, FOLDER *f)
{
	// Validate arguments
	if (o == NULL || f == NULL)
	{
		return;
	}

	FUNC7(o);
	{
		TOKEN_LIST *t = FUNC1(f);

		if (t != NULL)
		{
			UINT i;

			for (i = 0;i < t->NumTokens;i++)
			{
				FOLDER *ff = FUNC3(f, t->Token[i]);

				if (ff != NULL)
				{
					AC ac;

					FUNC9(&ac, sizeof(ac));
					ac.Deny = FUNC2(ff, "Deny");
					ac.Priority = FUNC4(ff, "Priority");
					FUNC5(ff, "IpAddress", &ac.IpAddress);

					if (FUNC5(ff, "NetMask", &ac.SubnetMask))
					{
						ac.Masked = true;
					}

					FUNC0(o, &ac);
				}
			}

			FUNC6(t);
		}
	}
	FUNC8(o);
}