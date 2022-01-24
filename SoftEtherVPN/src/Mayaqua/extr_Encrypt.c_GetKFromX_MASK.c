#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X ;
struct TYPE_7__ {int /*<<< orphan*/ * pkey; } ;
typedef  TYPE_2__ K ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  openssl_lock ; 

K *FUNC4(X *x)
{
	EVP_PKEY *pkey;
	K *k;
	// Validate arguments
	if (x == NULL)
	{
		return NULL;
	}

	FUNC0(openssl_lock);
	{
		pkey = FUNC2(x->x509);
	}
	FUNC1(openssl_lock);
	if (pkey == NULL)
	{
		return NULL;
	}

	k = FUNC3(sizeof(K));
	k->pkey = pkey;

	return k;
}