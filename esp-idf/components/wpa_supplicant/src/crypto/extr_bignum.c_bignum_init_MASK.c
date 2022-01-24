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
struct bignum {int dummy; } ;
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 scalar_t__ MP_OKAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bignum*) ; 
 scalar_t__ FUNC2 (int) ; 

struct bignum * 
FUNC3(void)
{
	struct bignum *n = (struct bignum *)FUNC2(sizeof(mp_int));
	if (n == NULL)
		return NULL;
	if (FUNC0((mp_int *) n) != MP_OKAY) {
		FUNC1(n);
		n = NULL;
	}
	return n;
}