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
typedef  int /*<<< orphan*/  quad_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

int
FUNC2(user_addr_t oldp, size_t *oldlenp, 
            user_addr_t newp, size_t newlen, quad_t *valp)
{
	int error = 0;

	if (oldp != USER_ADDR_NULL && oldlenp == NULL)
		return (EFAULT);
	if (oldp && *oldlenp < sizeof(quad_t))
		return (ENOMEM);
	if (newp && newlen != sizeof(quad_t))
		return (EINVAL);
	*oldlenp = sizeof(quad_t);
	if (oldp)
		error = FUNC1(valp, oldp, sizeof(quad_t));
	if (error == 0 && newp)
		error = FUNC0(newp, valp, sizeof(quad_t));
	return (error);
}