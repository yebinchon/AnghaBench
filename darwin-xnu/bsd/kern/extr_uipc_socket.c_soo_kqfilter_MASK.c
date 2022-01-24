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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct socket {int dummy; } ;
struct knote {int kn_filter; int /*<<< orphan*/  kn_data; void* kn_flags; int /*<<< orphan*/  kn_filtid; TYPE_2__* kn_fp; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {int dummy; } ;
struct TYPE_6__ {int (* f_attach ) (struct knote*,struct kevent_internal_s*) ;} ;
struct TYPE_5__ {TYPE_1__* f_fglob; } ;
struct TYPE_4__ {scalar_t__ fg_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  EVFILTID_SCK ; 
 int /*<<< orphan*/  EVFILTID_SOEXCEPT ; 
 int /*<<< orphan*/  EVFILTID_SOREAD ; 
 int /*<<< orphan*/  EVFILTID_SOWRITE ; 
#define  EVFILT_EXCEPT 131 
#define  EVFILT_READ 130 
#define  EVFILT_SOCK 129 
#define  EVFILT_WRITE 128 
 void* EV_ERROR ; 
 int /*<<< orphan*/  PROC_NULL ; 
 TYPE_3__* FUNC0 (struct knote*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct knote*,struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int FUNC7 (struct knote*,struct kevent_internal_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct fileproc *fp, struct knote *kn,
		struct kevent_internal_s *kev, vfs_context_t ctx)
{
#pragma unused(fp)
#if !CONFIG_MACF_SOCKET
#pragma unused(ctx)
#endif /* MAC_SOCKET */
	struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
	int result;

	FUNC5(so, 1);
	FUNC3(so, PROC_NULL);
	FUNC4(so);

#if CONFIG_MACF_SOCKET
	if (mac_socket_check_kqfilter(proc_ucred(vfs_context_proc(ctx)),
	    kn, so) != 0) {
		socket_unlock(so, 1);
		kn->kn_flags = EV_ERROR;
		kn->kn_data = EPERM;
		return 0;
	}
#endif /* MAC_SOCKET */

	switch (kn->kn_filter) {
	case EVFILT_READ:
		kn->kn_filtid = EVFILTID_SOREAD;
		break;
	case EVFILT_WRITE:
		kn->kn_filtid = EVFILTID_SOWRITE;
		break;
	case EVFILT_SOCK:
		kn->kn_filtid = EVFILTID_SCK;
		break;
	case EVFILT_EXCEPT:
		kn->kn_filtid = EVFILTID_SOEXCEPT;
		break;
	default:
		FUNC6(so, 1);
		kn->kn_flags = EV_ERROR;
		kn->kn_data = EINVAL;
		return 0;
	}

	/*
	 * call the appropriate sub-filter attach
	 * with the socket still locked
	 */
	result = FUNC0(kn)->f_attach(kn, kev);

	FUNC6(so, 1);

	return result;
}