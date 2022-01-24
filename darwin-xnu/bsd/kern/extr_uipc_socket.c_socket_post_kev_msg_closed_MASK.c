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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  kev_peername; int /*<<< orphan*/  kev_sockname; } ;
struct kev_socket_closed {TYPE_3__ ev_data; } ;
typedef  int /*<<< orphan*/  ev ;
struct TYPE_5__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_4__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEV_SOCKET_CLOSED ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC1 (struct kev_socket_closed*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC5 (struct socket*,struct sockaddr**) ; 
 int FUNC6 (struct socket*,struct sockaddr**) ; 

void
FUNC7(struct socket *so)
{
	struct kev_socket_closed ev;
	struct sockaddr *socksa = NULL, *peersa = NULL;
	int err;
	FUNC1(&ev, sizeof(ev));
	err = (*so->so_proto->pr_usrreqs->pru_sockaddr)(so, &socksa);
	if (err == 0) {
		err = (*so->so_proto->pr_usrreqs->pru_peeraddr)(so,
		    &peersa);
		if (err == 0) {
			FUNC2(&ev.ev_data.kev_sockname, socksa,
			    FUNC3(socksa->sa_len,
			    sizeof (ev.ev_data.kev_sockname)));
			FUNC2(&ev.ev_data.kev_peername, peersa,
			    FUNC3(peersa->sa_len,
			    sizeof (ev.ev_data.kev_peername)));
			FUNC4(KEV_SOCKET_CLOSED,
			    &ev.ev_data, sizeof (ev));
		}
	}
	if (socksa != NULL)
		FUNC0(socksa, M_SONAME);
	if (peersa != NULL)
		FUNC0(peersa, M_SONAME);
}