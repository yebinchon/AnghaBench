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
struct TYPE_3__ {int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ network_connection_pool_entry ;
typedef  int /*<<< orphan*/  network_connection_pool ;

/* Variables and functions */
 short EV_READ ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(int event_fd, short events, void *user_data) {
	network_connection_pool_entry *pool_entry = user_data;
	network_connection_pool *pool             = pool_entry->pool;

	if (events == EV_READ) {
		int b = -1;

		/**
		 * @todo we have to handle the case that the server really sent us something
		 *        up to now we just ignore it
		 */
		if (FUNC2(event_fd, FIONREAD, &b)) {
			FUNC0("ioctl(%d, FIONREAD, ...) failed: %s", event_fd, FUNC1(errno));
		} else if (b != 0) {
			FUNC0("ioctl(%d, FIONREAD, ...) said there is something to read, oops: %d", event_fd, b);
		} else {
			/* the server decided to close the connection (wait_timeout, crash, ... )
			 *
			 * remove us from the connection pool and close the connection */
		

			FUNC3(pool, pool_entry); // not in lua, so lock like lua_lock
		}
	}
}