#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_8__ {int sa_family; } ;
struct TYPE_7__ {char* sun_path; } ;
struct TYPE_11__ {TYPE_4__ ipv6; TYPE_3__ ipv4; TYPE_2__ common; TYPE_1__ un; } ;
struct TYPE_12__ {TYPE_5__ addr; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ network_address ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  dst_addr ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
	network_address *addr = *(network_address **)FUNC5(L);
	gsize keysize = 0;
	const char *key = FUNC4(L, 2, &keysize);

	if (FUNC11(key, keysize, FUNC0("type"))) {
		FUNC6(L, addr->addr.common.sa_family);
	} else if (FUNC11(key, keysize, FUNC0("name"))) {
		FUNC7(L, FUNC1(addr->name));
	} else if (FUNC11(key, keysize, FUNC0("address"))) {
#ifdef HAVE_INET_NTOP
		char dst_addr[INET6_ADDRSTRLEN];
#endif
		const char *str = NULL;

		switch (addr->addr.common.sa_family) {
		case AF_INET:
			str = FUNC2(addr->addr.ipv4.sin_addr);
			if (!str) {
				/* it shouldn't really fail, how about logging it ? */ 
			}
			break;
#ifdef HAVE_INET_NTOP
		case AF_INET6:
			str = inet_ntop(addr->addr.common.sa_family, &addr->addr.ipv6.sin6_addr, dst_addr, sizeof(dst_addr));
			if (!str) {
				/* it shouldn't really fail, how about logging it ? */ 
			}
			break;
#endif
#ifndef WIN32
		case AF_UNIX:
			str = addr->addr.un.sun_path;
			break;
#endif
		default:
			break;
		}

		if (NULL == str) {
			FUNC8(L);
		} else {
			FUNC9(L, str);
		}
	} else if (FUNC11(key, keysize, FUNC0("port"))) {
		switch (addr->addr.common.sa_family) {
		case AF_INET:
			FUNC6(L, FUNC10(addr->addr.ipv4.sin_port));
			break;
		case AF_INET6:
			FUNC6(L, FUNC10(addr->addr.ipv6.sin6_port));
			break;
		default:
			FUNC8(L);
			break;
		}
	} else {
		FUNC8(L);
	}

	return 1;
}