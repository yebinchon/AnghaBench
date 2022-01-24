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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int dummy; } ;
struct flock {int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_whence; } ;
struct fileglob {int fg_flag; int fg_lflags; struct vnode* fg_data; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int FG_HAS_OFDLOCK ; 
 int FHASLOCK ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 int /*<<< orphan*/  F_FLOCK ; 
 int /*<<< orphan*/  F_OFD_LOCK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct fileglob *fg, vfs_context_t ctx)
{
	struct vnode *vp = fg->fg_data;
	int error;

	if ( (error = FUNC3(vp)) == 0 ) {
		if (FUNC0(fg) == DTYPE_VNODE &&
		    ((fg->fg_flag & FHASLOCK) != 0 || 
		    (fg->fg_lflags & FG_HAS_OFDLOCK) != 0)) {
			struct flock lf = {
				.l_whence = SEEK_SET,
				.l_start = 0,
				.l_len = 0,
				.l_type = F_UNLCK
			};

			if ((fg->fg_flag & FHASLOCK) != 0)
				(void) FUNC1(vp, (caddr_t)fg,
				    F_UNLCK, &lf, F_FLOCK, ctx, NULL);

			if ((fg->fg_lflags & FG_HAS_OFDLOCK) != 0)
				(void) FUNC1(vp, (caddr_t)fg,
				    F_UNLCK, &lf, F_OFD_LOCK, ctx, NULL);
		}
	        error = FUNC2(vp, fg->fg_flag, ctx);
		(void) FUNC4(vp);
	}
	return (error);
}