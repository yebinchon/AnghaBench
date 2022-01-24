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
typedef  int /*<<< orphan*/  X_SERIAL ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  NAME ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

X *FUNC2(K *pub, K *priv, X *ca, NAME *name, UINT days, X_SERIAL *serial)
{
	X509 *x509;
	X *x;
	// Validate arguments
	if (pub == NULL || priv == NULL || name == NULL || ca == NULL)
	{
		return NULL;
	}

	x509 = FUNC0(pub, priv, ca, name, days, serial);
	if (x509 == NULL)
	{
		return NULL;
	}

	x = FUNC1(x509);

	if (x == NULL)
	{
		return NULL;
	}

	return x;
}