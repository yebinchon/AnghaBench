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
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

void
FUNC3(struct socket *so)
{
	FUNC2(so);

	while (FUNC0(so, FALSE)) {
		/*
		 * Notify the filters we are going away so they can detach
		 */
		FUNC1(so, SHUT_RDWR, 0, 0);

		/*
		 * Make sure we need to wait after the filter are notified
		 * of the disconnection
		 */
		if (FUNC0(so, TRUE) == 0)
			break;
	}
}