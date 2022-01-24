#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

bool FUNC3(X *x1, X *x2)
{
	// Validate arguments
	if (x1 == NULL || x2 == NULL)
	{
		return false;
	}

	FUNC0(openssl_lock);
	if (FUNC2(x1->x509, x2->x509) == 0)
	{
		FUNC1(openssl_lock);
		return true;
	}
	else
	{
		FUNC1(openssl_lock);
		return false;
	}
}