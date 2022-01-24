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
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

__attribute__((used)) static int
FUNC5(struct socket *so)
{
	struct flow_divert_pcb	*fd_cb		= so->so_fd_pcb;

	FUNC1((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != NULL);

	FUNC0(LOG_INFO, fd_cb, "Can't send more");

	FUNC4(so);

	FUNC3(fd_cb, SHUT_WR, FALSE);
	FUNC2(fd_cb);

	return 0;
}