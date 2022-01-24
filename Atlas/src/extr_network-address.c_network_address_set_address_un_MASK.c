#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_un {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct TYPE_13__ {TYPE_1__ un; } ;
struct TYPE_14__ {int len; TYPE_2__ addr; } ;
typedef  TYPE_3__ const network_address ;
typedef  int gint ;
typedef  TYPE_3__ gchar ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int FUNC4 (TYPE_3__ const*) ; 

__attribute__((used)) static gint FUNC5(network_address *addr, const gchar *address) {
	FUNC1(addr, -1);
	FUNC1(address, -1);

#ifdef HAVE_SYS_UN_H
	if (strlen(address) >= sizeof(addr->addr.un.sun_path) - 1) {
		g_critical("unix-path is too long: %s", address);
		return -1;
	}

	addr->addr.un.sun_family = AF_UNIX;
	strcpy(addr->addr.un.sun_path, address);
	addr->len = sizeof(struct sockaddr_un);
	
	network_address_refresh_name(addr);

	return 0;
#else
	return -1;
#endif
}