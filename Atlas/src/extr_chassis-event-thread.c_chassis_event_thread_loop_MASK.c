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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_base; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ chassis_event_thread_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_STRLOC ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  tls_index ; 

void *FUNC9(chassis_event_thread_t *thread) {
	FUNC7(&tls_index, FUNC0(thread->index));
	/**
	 * check once a second if we shall shutdown the proxy
	 */
	while (!FUNC2()) {
		struct timeval timeout;
		int r;

		timeout.tv_sec = 1;
		timeout.tv_usec = 0;

		FUNC5(FUNC4(thread->event_base, &timeout) == 0);

		r = FUNC3(thread->event_base);

		if (r == -1) {
#ifdef WIN32
			errno = WSAGetLastError();
#endif
			if (errno == EINTR) continue;
			FUNC6("%s: leaving chassis_event_thread_loop early, errno != EINTR was: %s (%d)", G_STRLOC, FUNC8(errno), errno);
			break;
		}
	}

	return NULL;
}