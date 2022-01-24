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
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_2__ {int cn_flags; int /*<<< orphan*/  cn_context; } ;
struct nameidata {int ni_flag; TYPE_1__ ni_cnd; int /*<<< orphan*/  ni_dvp; scalar_t__ ni_dirp; int /*<<< orphan*/  ni_segflg; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int ENOTDIR ; 
 int NAMEI_CONTLOOKUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int USEDVP ; 
 scalar_t__ VDIR ; 
 int FUNC1 (scalar_t__,char*,int) ; 
 int FUNC2 (struct nameidata*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct nameidata *ndp, int dirfd)
{
	if ((dirfd != AT_FDCWD) &&
	    !(ndp->ni_flag & NAMEI_CONTLOOKUP) &&
	    !(ndp->ni_cnd.cn_flags & USEDVP)) {
		int error = 0;
		char c;

		if (FUNC0(ndp->ni_segflg)) {
			error = FUNC1(ndp->ni_dirp, &c, sizeof(char));
			if (error)
				return (error);
		} else {
			c = *((char *)(ndp->ni_dirp));
		}

		if (c != '/') {
			vnode_t dvp_at;

			error = FUNC3(ndp->ni_cnd.cn_context, dirfd,
			    &dvp_at);
			if (error)
				return (error);

			if (FUNC5(dvp_at) != VDIR) {
				FUNC4(dvp_at);
				return (ENOTDIR);
			}

			ndp->ni_dvp = dvp_at;
			ndp->ni_cnd.cn_flags |= USEDVP;
			error = FUNC2(ndp);
			ndp->ni_cnd.cn_flags &= ~USEDVP;
			FUNC4(dvp_at);
			return (error);
		}
	}

	return (FUNC2(ndp));
}