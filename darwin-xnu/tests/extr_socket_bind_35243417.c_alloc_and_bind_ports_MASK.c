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
typedef  scalar_t__ in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool
FUNC5(in_port_t port_start, in_port_t port_end,
		     int bind_attempts)
{
	int	bound_count = 0;
	bool	success = true;

	for (in_port_t i = port_start; success && i <= port_end; i++) {
		int	s6 = -1;
		int	s6_other = -1;
		int	ret;

		s6 = FUNC3();
		FUNC4(s6);
		if (FUNC2(s6, i) != 0) {
			/* find the next available port */
			goto loop_done;
		}
		s6_other = FUNC3();
		ret = FUNC2(s6_other, i);
		T_WITH_ERRNO;
		T_QUIET;
		FUNC0(ret != 0, "socket %d bind %d", s6_other, i);
		/*
		 * After bind fails, try binding to a different port.
		 * For non-root user, this will panic without the fix for
		 * <rdar://problem/35243417>.
		 */
		if (FUNC2(s6_other, i + 1) == 0) {
			bound_count++;
			if (bound_count >= bind_attempts) {
				break;
			}
		}
	loop_done:
		if (s6 >= 0) {
			FUNC1(s6);
		}
		if (s6_other >= 0) {
			FUNC1(s6_other);
		}
	}
	FUNC0(bound_count == bind_attempts,
		      "number of successful binds %d (out of %d)",
		      bound_count, bind_attempts);
	return (success);
}