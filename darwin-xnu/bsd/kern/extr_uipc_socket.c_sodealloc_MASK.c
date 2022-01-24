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
struct socket {int so_flags; int so_flags1; int /*<<< orphan*/  so_zone; int /*<<< orphan*/  so_gencnt; int /*<<< orphan*/ * so_msg_state; int /*<<< orphan*/  so_cred; } ;
typedef  int /*<<< orphan*/  SInt64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int SOF1_CACHED_IN_SOCK_LAYER ; 
 int SOF_ENABLE_MSGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  so_gencnt ; 

void
FUNC9(struct socket *so)
{
	FUNC6(&so->so_cred);

	/* Remove any filters */
	FUNC8(so);

#if CONTENT_FILTER
	cfil_sock_detach(so);
#endif /* CONTENT_FILTER */

	/* Delete the state allocated for msg queues on a socket */
	if (so->so_flags & SOF_ENABLE_MSGS) {
		FUNC0(so->so_msg_state, M_TEMP);
		so->so_msg_state = NULL;
	}
	FUNC3(so->so_msg_state == NULL);

	so->so_gencnt = FUNC2((SInt64 *)&so_gencnt);

#if CONFIG_MACF_SOCKET
	mac_socket_label_destroy(so);
#endif /* MAC_SOCKET */

	if (so->so_flags1 & SOF1_CACHED_IN_SOCK_LAYER) {
		FUNC4(so);
	} else {
		FUNC1(so, sizeof (*so), so->so_zone);
	}
}