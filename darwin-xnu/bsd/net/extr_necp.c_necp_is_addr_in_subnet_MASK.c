#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct sockaddr {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_port; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sockaddr*) ; 
 TYPE_1__* FUNC2 (struct sockaddr*) ; 

__attribute__((used)) static bool
FUNC3(struct sockaddr *addr, struct sockaddr *subnet_addr, u_int8_t subnet_prefix)
{
	if (addr == NULL || subnet_addr == NULL) {
		return (FALSE);
	}

	if (addr->sa_family != subnet_addr->sa_family || addr->sa_len != subnet_addr->sa_len) {
		return (FALSE);
	}

	switch (addr->sa_family) {
		case AF_INET: {
			if (FUNC1(subnet_addr)->sin_port != 0 &&
				FUNC1(addr)->sin_port != FUNC1(subnet_addr)->sin_port) {
				return (FALSE);
			}
			return (FUNC0((u_int8_t *)&FUNC1(addr)->sin_addr, (u_int8_t *)&FUNC1(subnet_addr)->sin_addr, subnet_prefix));
		}
		case AF_INET6: {
			if (FUNC2(subnet_addr)->sin6_port != 0 &&
				FUNC2(addr)->sin6_port != FUNC2(subnet_addr)->sin6_port) {
				return (FALSE);
			}
			if (FUNC2(addr)->sin6_scope_id &&
				FUNC2(subnet_addr)->sin6_scope_id &&
				FUNC2(addr)->sin6_scope_id != FUNC2(subnet_addr)->sin6_scope_id) {
				return (FALSE);
			}
			return (FUNC0((u_int8_t *)&FUNC2(addr)->sin6_addr, (u_int8_t *)&FUNC2(subnet_addr)->sin6_addr, subnet_prefix));
		}
		default: {
			return (FALSE);
		}
	}

	return (FALSE);
}