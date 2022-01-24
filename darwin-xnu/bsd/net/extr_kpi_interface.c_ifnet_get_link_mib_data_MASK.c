#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  TYPE_1__* ifnet_t ;
typedef  scalar_t__ errno_t ;
struct TYPE_5__ {scalar_t__ if_linkmiblen; int /*<<< orphan*/ * if_linkmib; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ EMSGSIZE ; 
 scalar_t__ ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

errno_t
FUNC3(ifnet_t interface, void *mibData, u_int32_t *mibLen)
{
	errno_t	result = 0;

	if (interface == NULL)
		return (EINVAL);

	FUNC2(interface);
	if (*mibLen < interface->if_linkmiblen)
		result = EMSGSIZE;
	if (result == 0 && interface->if_linkmib == NULL)
		result = ENOTSUP;

	if (result == 0) {
		*mibLen = interface->if_linkmiblen;
		FUNC0(interface->if_linkmib, mibData, *mibLen);
	}
	FUNC1(interface);

	return (result);
}