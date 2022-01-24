#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int /*<<< orphan*/  v_knotes; TYPE_1__* v_fifoinfo; } ;
struct knote {int kn_filter; int kn_flags; int kn_data; int /*<<< orphan*/  kn_filtid; int /*<<< orphan*/  kn_hookid; void* kn_hook; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct TYPE_4__ {int /*<<< orphan*/  fg_cred; scalar_t__ fg_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  fi_readsock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  EVFILTID_VN ; 
#define  EVFILT_READ 130 
#define  EVFILT_VNODE 129 
#define  EVFILT_WRITE 128 
 int EV_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  VNODE_MONITOR_BEGIN ; 
 int /*<<< orphan*/  VNODE_NODEAD ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct knote*,struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct knote*,struct vnode*) ; 
 int FUNC4 (struct vnode*,struct knote*,struct kevent_internal_s*) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

__attribute__((used)) static int
FUNC13(struct fileproc *fp, struct knote *kn,
		struct kevent_internal_s *kev, vfs_context_t ctx)
{
	struct vnode *vp;
	int error = 0;
	int result = 0;

	vp = (struct vnode *)fp->f_fglob->fg_data;

	/*
	 * Don't attach a knote to a dead vnode.
	 */
	if ((error = FUNC5(vp, 0, VNODE_NODEAD)) == 0) {
		switch (kn->kn_filter) {
			case EVFILT_READ:
			case EVFILT_WRITE:
				if (FUNC7(vp)) {
					/* We'll only watch FIFOs that use our fifofs */
					if (!(vp->v_fifoinfo && vp->v_fifoinfo->fi_readsock)) {
						error = ENOTSUP;
					}

				} else if (!FUNC8(vp)) {
					if (FUNC6(vp)) {
						result = FUNC4(vp, kn, kev);
						if ((kn->kn_flags & EV_ERROR) == 0) {
							/* claimed by a special device */
							FUNC10(vp);
							return result;
						}
					}
					error = EINVAL;
				}
				break;
			case EVFILT_VNODE:
				break;
			default:
				error = EINVAL;
		}

		if (error == 0) {

#if CONFIG_MACF
			error = mac_vnode_check_kqfilter(ctx, fp->f_fglob->fg_cred, kn, vp);
			if (error) {
				vnode_put(vp);
				goto out;
			}
#endif

			kn->kn_hook = (void*)vp;
			kn->kn_hookid = FUNC12(vp);
			kn->kn_filtid = EVFILTID_VN;

			FUNC9(vp);
			FUNC0(&vp->v_knotes, kn);
			result = FUNC2(kn, vp, 0);
			FUNC11(vp);

			/*
			 * Ask the filesystem to provide remove notifications,
			 * but ignore failure
			 */
			FUNC1(vp, 0, VNODE_MONITOR_BEGIN, (void*) kn,  ctx);
		}

		FUNC10(vp);
	}

 out:
	if (error) {
		kn->kn_flags = EV_ERROR;
		kn->kn_data = error;
	}

	return result;
}