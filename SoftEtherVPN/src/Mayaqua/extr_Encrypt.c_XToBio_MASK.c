#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

BIO *FUNC5(X *x, bool text)
{
	BIO *bio;
	// Validate arguments
	if (x == NULL)
	{
		return NULL;
	}

	bio = FUNC1();

	FUNC0(openssl_lock);
	{
		if (text == false)
		{
			// Binary format
			FUNC4(bio, x->x509);
		}
		else
		{
			// Text format
			FUNC2(bio, x->x509);
		}
	}
	FUNC3(openssl_lock);

	return bio;
}