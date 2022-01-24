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
struct TYPE_2__ {scalar_t__ sb_lowat; } ;
struct socket {int so_state; scalar_t__ so_error; int so_flags1; int so_flags; scalar_t__ so_type; TYPE_1__ so_snd; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ PF_MULTIPATH ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 scalar_t__ SOCK_STREAM ; 
 int SOF1_PRECONNECT_DATA ; 
 int SOF_NOTSENT_LOWAT ; 
 int SS_CANTSENDMORE ; 
 int FUNC2 (struct socket*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so)
{
	if ((so->so_state & SS_CANTSENDMORE) ||
	    so->so_error > 0)
		return (1);
	if (FUNC4(so) || !FUNC5(so))
		return (0);
	if (so->so_flags1 & SOF1_PRECONNECT_DATA)
		return(1);

	if (FUNC3(&(so)->so_snd) >= (so)->so_snd.sb_lowat) {
		if (so->so_flags & SOF_NOTSENT_LOWAT) {
			if ((FUNC0(so) == PF_INET6 ||
			    FUNC0(so) == PF_INET) &&
			    so->so_type == SOCK_STREAM) {
				return (FUNC6(so));
			}
#if MPTCP
			else if ((SOCK_DOM(so) == PF_MULTIPATH) &&
			    (SOCK_PROTO(so) == IPPROTO_TCP)) {
				return (mptcp_notsent_lowat_check(so));
			}
#endif
			else {
				return (1);
			}
		} else {
			return (1);
		}
	}
	return (0);
}