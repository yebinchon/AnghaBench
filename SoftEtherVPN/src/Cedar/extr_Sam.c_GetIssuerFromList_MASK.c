#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  issuer_name; int /*<<< orphan*/  subject_name; } ;
typedef  TYPE_1__ X ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

X *FUNC8(LIST *cert_list, X *cert)
{
	UINT i;
	X *ret = NULL;
	// Validate arguments
	if (cert_list == NULL || cert == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC7(cert_list);i++)
	{
		X *x = FUNC6(cert_list, i);
		// Name comparison
		if (FUNC1(x))
		{
			if (FUNC2(x->subject_name, cert->issuer_name))
			{
				// Get the public key of the root certificate
				K *k = FUNC5(x);

				if (k != NULL)
				{
					// Check the signature
					if (FUNC0(cert, k))
					{
						ret = x;
					}
					FUNC4(k);
				}
			}
		}
		if (FUNC3(x, cert))
		{
			// Complete identical
			ret = x;
		}
	}

	return ret;
}