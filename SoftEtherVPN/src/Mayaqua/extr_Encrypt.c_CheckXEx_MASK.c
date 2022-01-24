#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  subject_name; int /*<<< orphan*/  issuer_name; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

bool FUNC5(X *x, X *x_issuer, bool check_name, bool check_date)
{
	K *k;
	bool ret;
	// Validate arguments
	if (x == NULL || x_issuer == NULL)
	{
		return false;
	}

	k = FUNC4(x_issuer);
	if (k == NULL)
	{
		return false;
	}

	ret = FUNC0(x, k);

	if (ret)
	{
		if (check_name)
		{
			if (FUNC2(x->issuer_name, x_issuer->subject_name) == false)
			{
				ret = false;
			}
		}

		if (check_date)
		{
			if (FUNC1(x_issuer) == false)
			{
				ret = false;
			}
		}
	}

	FUNC3(k);

	return ret;
}