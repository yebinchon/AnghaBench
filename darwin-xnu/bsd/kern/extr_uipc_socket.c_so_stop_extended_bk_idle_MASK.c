#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_flags; scalar_t__ so_extended_bk_start; int /*<<< orphan*/  so_flags1; } ;
struct TYPE_2__ {scalar_t__ so_xbkidle_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ; 
 int /*<<< orphan*/  SOF1_EXTEND_BK_IDLE_INPROG ; 
 int SOF_DEFUNCT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ) ; 
 TYPE_1__ soextbkidlestat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct socket *so)
{
	so->so_flags1 &= ~SOF1_EXTEND_BK_IDLE_INPROG;
	so->so_extended_bk_start = 0;

	FUNC0(&soextbkidlestat.so_xbkidle_active);
	FUNC1(soextbkidlestat.so_xbkidle_active >= 0);
	/*
	 * Force defunct
	 */
	FUNC4(FUNC2(), so,
	    SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, FALSE);
	if (so->so_flags & SOF_DEFUNCT) {
		FUNC3(FUNC2(), so,
		    SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL);
	}
}