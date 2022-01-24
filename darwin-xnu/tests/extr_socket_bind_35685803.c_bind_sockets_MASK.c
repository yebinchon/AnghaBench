#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int socket_count; int /*<<< orphan*/ * socket_list; scalar_t__ v6; } ;
typedef  TYPE_1__* SocketInfoRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(SocketInfoRef info, const char * msg)
{
	for (int i = 0; i < info->socket_count; i++) {
		int		error;
		uint16_t	port;

		if (info->v6) {
			error = FUNC4(info->socket_list[i], 0);
		}
		else {
			error = FUNC2(info->socket_list[i], 0);
		}
		port = FUNC3(info->socket_list[i]);
		if (debug) {
			FUNC0( "%s: fd %d port is %d error %d",
			       msg, info->socket_list[i], FUNC1(port), error);
		}
	}
	return;
}