#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ sa_family; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {TYPE_7__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct TYPE_10__ {TYPE_2__ common; TYPE_1__ ipv4; } ;
struct TYPE_11__ {TYPE_3__ addr; } ;
typedef  TYPE_4__ network_address ;
typedef  int gboolean ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_UNIX 128 
 int FALSE ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

gboolean FUNC5(network_address *dst_addr, network_address *src_addr) {
	if (src_addr->addr.common.sa_family != dst_addr->addr.common.sa_family) {
#ifdef HAVE_SYS_UN_H
		if (src_addr->addr.common.sa_family == AF_UNIX ||
		    dst_addr->addr.common.sa_family == AF_UNIX) {
			/* AF_UNIX is always local,
			 * even if one of the two sides doesn't return a reasonable protocol 
			 *
			 * see #42220
			 */
			return TRUE;
		}
#endif
		FUNC2("%s: is-local family %d != %d",
				G_STRLOC,
				src_addr->addr.common.sa_family,
				dst_addr->addr.common.sa_family
				);
		return FALSE;
	}

	switch (src_addr->addr.common.sa_family) {
	case AF_INET:
		/* inet_ntoa() returns a pointer to a static buffer
		 * we can't call it twice in the same function-call */

		FUNC1("%s: is-local src: %s(:%d) =? ...",
				G_STRLOC,
				FUNC3(src_addr->addr.ipv4.sin_addr),
				FUNC4(src_addr->addr.ipv4.sin_port));

		FUNC1("%s: is-local dst: %s(:%d)",
				G_STRLOC,
				FUNC3(dst_addr->addr.ipv4.sin_addr),
				FUNC4(dst_addr->addr.ipv4.sin_port)
				);

		return (dst_addr->addr.ipv4.sin_addr.s_addr == src_addr->addr.ipv4.sin_addr.s_addr);
#ifdef HAVE_SYS_UN_H
	case AF_UNIX:
		/* we are always local */
		return TRUE;
#endif
	default:
		FUNC0("%s: sa_family = %d", G_STRLOC, src_addr->addr.common.sa_family);
		return FALSE;
	}
}