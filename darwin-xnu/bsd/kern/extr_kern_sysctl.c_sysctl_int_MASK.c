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
typedef  scalar_t__ user_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC1 (scalar_t__,int*,int) ; 
 int FUNC2 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  value32 ; 

int
FUNC3(user_addr_t oldp, size_t *oldlenp, 
           user_addr_t newp, size_t newlen, int *valp)
{
	int error = 0;

	if (oldp != USER_ADDR_NULL && oldlenp == NULL)
		return (EFAULT);
	if (oldp && *oldlenp < sizeof(int))
		return (ENOMEM);
	if (newp && newlen != sizeof(int))
		return (EINVAL);
	*oldlenp = sizeof(int);
	if (oldp)
		error = FUNC2(valp, oldp, sizeof(int));
	if (error == 0 && newp) {
		error = FUNC1(newp, valp, sizeof(int));
		FUNC0(value32, *valp);
	}
	return (error);
}