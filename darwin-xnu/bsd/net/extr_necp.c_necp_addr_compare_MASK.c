#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; scalar_t__ sa_len; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {struct sockaddr s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_6__ {struct sockaddr* s6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin6_port; TYPE_2__ sin6_addr; int /*<<< orphan*/  sin6_scope_id; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (struct sockaddr*,struct sockaddr*,int) ; 
 TYPE_4__* FUNC1 (struct sockaddr*) ; 
 TYPE_3__* FUNC2 (struct sockaddr*) ; 

__attribute__((used)) static int
FUNC3(struct sockaddr *sa1, struct sockaddr *sa2, int check_port)
{
	int result = 0;
	int port_result = 0;

	if (sa1->sa_family != sa2->sa_family || sa1->sa_len != sa2->sa_len) {
		return (2);
	}

	if (sa1->sa_len == 0) {
		return (0);
	}

	switch (sa1->sa_family) {
		case AF_INET: {
			if (sa1->sa_len != sizeof(struct sockaddr_in)) {
				return (2);
			}

			result = FUNC0(&FUNC1(sa1)->sin_addr.s_addr, &FUNC1(sa2)->sin_addr.s_addr, sizeof(FUNC1(sa1)->sin_addr.s_addr));

			if (check_port) {
				if (FUNC1(sa1)->sin_port < FUNC1(sa2)->sin_port) {
					port_result = -1;
				} else if (FUNC1(sa1)->sin_port > FUNC1(sa2)->sin_port) {
					port_result = 1;
				}

				if (result == 0) {
					result = port_result;
				} else if ((result > 0 && port_result < 0) || (result < 0 && port_result > 0)) {
					return (2);
				}
			}

			break;
		}
		case AF_INET6: {
			if (sa1->sa_len != sizeof(struct sockaddr_in6)) {
				return (2);
			}

			if (FUNC2(sa1)->sin6_scope_id != FUNC2(sa2)->sin6_scope_id) {
				return (2);
			}

			result = FUNC0(&FUNC2(sa1)->sin6_addr.s6_addr[0], &FUNC2(sa2)->sin6_addr.s6_addr[0], sizeof(struct in6_addr));

			if (check_port) {
				if (FUNC2(sa1)->sin6_port < FUNC2(sa2)->sin6_port) {
					port_result = -1;
				} else if (FUNC2(sa1)->sin6_port > FUNC2(sa2)->sin6_port) {
					port_result = 1;
				}

				if (result == 0) {
					result = port_result;
				} else if ((result > 0 && port_result < 0) || (result < 0 && port_result > 0)) {
					return (2);
				}
			}

			break;
		}
		default: {
			result = FUNC0(sa1, sa2, sa1->sa_len);
			break;
		}
	}

	if (result < 0) {
		result = (-1);
	} else if (result > 0) {
		result = (1);
	}

	return (result);
}