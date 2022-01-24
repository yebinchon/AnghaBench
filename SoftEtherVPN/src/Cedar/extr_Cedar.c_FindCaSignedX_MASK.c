#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  issuer_name; int /*<<< orphan*/  subject_name; } ;
typedef  TYPE_1__ X ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

X *FUNC11(LIST *o, X *x)
{
	X *ret;
	// Validate arguments
	if (o == NULL || x == NULL)
	{
		return NULL;
	}

	ret = NULL;

	FUNC9(o);
	{
		UINT i;
		for (i = 0;i < FUNC8(o);i++)
		{
			X *ca = FUNC7(o, i);
			if (FUNC1(ca))
			{
				if (FUNC3(ca->subject_name, x->issuer_name))
				{
					K *k = FUNC6(ca);
					if (k != NULL)
					{
						if (FUNC0(x, k))
						{
							ret = FUNC2(ca);
						}
						FUNC5(k);
					}
				}
				else if (FUNC4(ca, x))
				{
					ret = FUNC2(ca);
				}
			}

			if (ret != NULL)
			{
				break;
			}
		}
	}
	FUNC10(o);

	return ret;
}