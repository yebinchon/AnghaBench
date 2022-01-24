#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X ;
struct TYPE_6__ {int /*<<< orphan*/  pkey; } ;
typedef  TYPE_2__ K ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_lock ; 

bool FUNC3(X *x, K *k)
{
	// Validate arguments
	if (x == NULL || k == NULL)
	{
		return false;
	}

	FUNC0(openssl_lock);
	{
		if (FUNC2(x->x509, k->pkey) == 0)
		{
			FUNC1(openssl_lock);
			return false;
		}
	}
	FUNC1(openssl_lock);
	return true;
}