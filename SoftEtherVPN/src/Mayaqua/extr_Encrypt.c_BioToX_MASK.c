#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  openssl_lock ; 

X *FUNC5(BIO *bio, bool text)
{
	X *x;
	X509 *x509;
	// Validate arguments
	if (bio == NULL)
	{
		return NULL;
	}

	FUNC0(openssl_lock);
	{
		// Reading x509
		if (text == false)
		{
			// Binary mode
			x509 = FUNC4(bio, NULL);
		}
		else
		{
			// Text mode
			x509 = FUNC1(bio, NULL, NULL, NULL);
		}
	}
	FUNC2(openssl_lock);

	if (x509 == NULL)
	{
		return NULL;
	}

	x = FUNC3(x509);

	if (x == NULL)
	{
		return NULL;
	}

	return x;
}