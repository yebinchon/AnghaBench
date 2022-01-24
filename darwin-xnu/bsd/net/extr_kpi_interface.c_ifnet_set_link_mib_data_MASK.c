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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_5__ {int /*<<< orphan*/  if_linkmiblen; void* if_linkmib; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

errno_t
FUNC2(ifnet_t interface, void *mibData, u_int32_t mibLen)
{
	if (interface == NULL)
		return (EINVAL);

	FUNC1(interface);
	interface->if_linkmib = (void*)mibData;
	interface->if_linkmiblen = mibLen;
	FUNC0(interface);
	return (0);
}