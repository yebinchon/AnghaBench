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
struct TYPE_12__ {int /*<<< orphan*/  issuer_url; scalar_t__ root_cert; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIND_CERT_CHAIN_MAX_DEPTH ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(LIST *o, X *x, LIST *found_chain)
{
	bool ret = false;
	X *r;
	bool do_free = false;
	// Validate arguments
	if (o == NULL || x == NULL || found_chain == NULL)
	{
		return false;
	}

	if (FUNC8(found_chain) >= FIND_CERT_CHAIN_MAX_DEPTH)
	{
		return false;
	}

	FUNC0(found_chain, FUNC2(x));

	if (x->root_cert)
	{
		return true;
	}

	r = FUNC5(o, x);

	if (r == NULL)
	{
		if (FUNC7(x->issuer_url) == false)
		{
			r = FUNC4(x->issuer_url);

			if (FUNC1(x, r, true, true) && FUNC3(x, r) == false)
			{
				// found
				do_free = true;
			}
			else
			{
				// invalid
				FUNC6(r);
				r = NULL;
			}
		}
	}

	if (r != NULL)
	{
		ret = FUNC9(o, r, found_chain);
	}

	if (do_free)
	{
		FUNC6(r);
	}

	return ret;
}