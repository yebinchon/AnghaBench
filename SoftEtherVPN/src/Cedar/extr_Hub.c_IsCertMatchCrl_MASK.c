#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* subject_name; int /*<<< orphan*/ * serial; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {TYPE_2__* Name; int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; int /*<<< orphan*/ * Serial; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Local; int /*<<< orphan*/ * State; int /*<<< orphan*/ * Country; int /*<<< orphan*/ * Unit; int /*<<< orphan*/ * Organization; int /*<<< orphan*/ * CommonName; } ;
typedef  TYPE_2__ NAME ;
typedef  TYPE_3__ CRL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int MD5_SIZE ; 
 int SHA1_SIZE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC6(X *x, CRL *crl)
{
	bool b = true;
	// Validate arguments
	if (x == NULL || crl == NULL)
	{
		return false;
	}

	if (crl->Serial != NULL)
	{
		// If a serial number is defined in the CRL
		if (x->serial == NULL || FUNC1(x->serial, crl->Serial) == false)
		{
			// Serial number mismatch
			b = false;
		}
	}

	if (FUNC3(crl->DigestMD5, sizeof(crl->DigestMD5)) == false)
	{
		UCHAR test[MD5_SIZE];
		// If a DigestMD5 is defined in the CRL
		FUNC2(x, test, false);

		if (FUNC0(test, crl->DigestMD5, MD5_SIZE) != 0)
		{
			b = false;
		}
	}

	if (FUNC3(crl->DigestSHA1, sizeof(crl->DigestSHA1)) == false)
	{
		UCHAR test[SHA1_SIZE];
		// If a DigestSHA1 is defined in the CRL
		FUNC2(x, test, true);

		if (FUNC0(test, crl->DigestSHA1, SHA1_SIZE) != 0)
		{
			b = false;
		}
	}

	if (crl->Name != NULL)
	{
		// If a name is defined in the CRL
		NAME *xn, *cn;
		xn = x->subject_name;
		cn = crl->Name;

		if (cn->CommonName != NULL && (FUNC4(cn->CommonName) == false))
		{
			if (xn->CommonName == NULL || FUNC5(xn->CommonName, cn->CommonName) != 0)
			{
				// CommonName mismatch
				b = false;
			}
		}

		if (cn->Organization != NULL && (FUNC4(cn->Organization) == false))
		{
			if (xn->Organization == NULL || FUNC5(xn->Organization, cn->Organization) != 0)
			{
				// Organization mismatch
				b = false;
			}
		}

		if (cn->Unit != NULL && (FUNC4(cn->Unit) == false))
		{
			if (xn->Unit == NULL || FUNC5(xn->Unit, cn->Unit) != 0)
			{
				// Unit mismatch
				b = false;
			}
		}

		if (cn->Country != NULL && (FUNC4(cn->Country) == false))
		{
			if (xn->Country == NULL || FUNC5(xn->Country, cn->Country) != 0)
			{
				// Country mismatch
				b = false;
			}
		}

		if (cn->State != NULL && (FUNC4(cn->State) == false))
		{
			if (xn->State == NULL || FUNC5(xn->State, cn->State) != 0)
			{
				// State mismatch
				b = false;
			}
		}

		if (cn->Local != NULL && (FUNC4(cn->Local) == false))
		{
			if (xn->Local == NULL || FUNC5(xn->Local, cn->Local) != 0)
			{
				// Local mismatch
				b = false;
			}
		}
	}

	return b;
}