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
struct sockaddr {int dummy; } ;
typedef  scalar_t__ protocol_family_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/ * ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,void*,struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

errno_t
FUNC2(ifnet_t interface, protocol_family_t protocol_family,
    mbuf_t m, void *route, const struct sockaddr *dest)
{
	if (interface == NULL || protocol_family == 0 || m == NULL) {
		if (m != NULL)
			FUNC1(m);
		return (EINVAL);
	}
	return (FUNC0(interface, protocol_family, m, route, dest, 0, NULL));
}