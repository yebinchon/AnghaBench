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
struct TYPE_2__ {scalar_t__ sb_lowat; scalar_t__ sb_hiwat; } ;
struct socket {int so_state; int so_flags1; int so_flags; scalar_t__ so_type; TYPE_1__ so_snd; scalar_t__ so_error; } ;
struct knote {scalar_t__ kn_data; int kn_sfflags; scalar_t__ kn_sdata; scalar_t__ kn_fflags; int /*<<< orphan*/  kn_flags; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_EOF ; 
 scalar_t__ IPPROTO_TCP ; 
 int NOTE_LOWAT ; 
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
 int so_notsent_lowat_check ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int FUNC6 (struct socket*) ; 

__attribute__((used)) static int
FUNC7(struct knote *kn, struct socket *so)
{
	int ret = 0;

	kn->kn_data = FUNC3(&so->so_snd);
	if (so->so_state & SS_CANTSENDMORE) {
		kn->kn_flags |= EV_EOF;
		kn->kn_fflags = so->so_error;
		return 1;
	}
	if (so->so_error) {	/* temporary udp error */
		return 1;
	}
	if (!FUNC5(so)) {
		return 0;
	}
	if (so->so_flags1 & SOF1_PRECONNECT_DATA) {
		return 1;
	}
	int64_t	lowwat = so->so_snd.sb_lowat;
	if (kn->kn_sfflags & NOTE_LOWAT) {
		if (kn->kn_sdata > so->so_snd.sb_hiwat)
			lowwat = so->so_snd.sb_hiwat;
		else if (kn->kn_sdata > lowwat)
			lowwat = kn->kn_sdata;
	}
	if (kn->kn_data >= lowwat) {
		if ((so->so_flags & SOF_NOTSENT_LOWAT)
#if (DEBUG || DEVELOPMENT)
		    && so_notsent_lowat_check == 1
#endif /* DEBUG || DEVELOPMENT */
		    ) {
			if ((FUNC0(so) == PF_INET ||
			    FUNC0(so) == PF_INET6) &&
			    so->so_type == SOCK_STREAM) {
				ret = FUNC6(so);
			}
#if MPTCP
			else if ((SOCK_DOM(so) == PF_MULTIPATH) &&
			    (SOCK_PROTO(so) == IPPROTO_TCP)) {
				ret = mptcp_notsent_lowat_check(so);
			}
#endif
			else {
				return 1;
			}
		} else {
			ret = 1;
		}
	}
	if (FUNC4(so))
		ret = 0;
	return (ret);
}