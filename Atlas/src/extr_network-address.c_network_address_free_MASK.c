#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ can_unlink_socket; TYPE_3__* name; } ;
typedef  TYPE_1__ network_address ;
typedef  char gchar ;
struct TYPE_6__ {char* str; } ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  G_STRLOC ; 
 scalar_t__ TRUE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(network_address *addr) {

	if (!addr) return;

#ifndef WIN32
	/*
	 * if the name we're freeing starts with a '/', we're
	 * looking at a unix socket which needs to be removed
	 */
	if (addr->can_unlink_socket == TRUE && addr->name != NULL &&
			addr->name->str != NULL) {
		gchar	*name;
		int		ret;

		name = addr->name->str;
		if (name[0] == '/') {
			ret = FUNC3(name);
			if (ret == 0) {
				FUNC1("%s: removing socket %s successful", 
					G_STRLOC, name);
			} else {
				if (errno != EPERM && errno != EACCES) {
					FUNC0("%s: removing socket %s failed: %s (%d)", 
						G_STRLOC, name, FUNC5(errno), errno);
				}
			}
		}
	}
#endif /* WIN32 */

	FUNC4(addr->name, TRUE);
	FUNC2(addr);
}