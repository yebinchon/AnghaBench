#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
typedef  TYPE_1__* ifaddr_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_7__ {scalar_t__ sa_len; } ;
struct TYPE_6__ {TYPE_3__* ifa_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct sockaddr*,scalar_t__) ; 

errno_t
FUNC3(ifaddr_t ifa, struct sockaddr *out_addr, u_int32_t addr_size)
{
	u_int32_t copylen;

	if (ifa == NULL || out_addr == NULL)
		return (EINVAL);

	FUNC0(ifa);
	if (ifa->ifa_addr == NULL) {
		FUNC1(ifa);
		return (ENOTSUP);
	}

	copylen = (addr_size >= ifa->ifa_addr->sa_len) ?
	    ifa->ifa_addr->sa_len : addr_size;
	FUNC2(ifa->ifa_addr, out_addr, copylen);

	if (ifa->ifa_addr->sa_len > addr_size) {
		FUNC1(ifa);
		return (EMSGSIZE);
	}

	FUNC1(ifa);
	return (0);
}