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
struct vnop_readdir_args {int a_flags; struct uio* a_uio; } ;
struct uio {int uio_offset; } ;
struct proc {TYPE_1__* p_fd; } ;
struct dirent {int d_reclen; scalar_t__ d_fileno; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_namlen; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int fd_nfiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EINVAL ; 
 scalar_t__ FD_STDIN ; 
 int UF_RESERVED ; 
 int UIO_MX ; 
 int VNODE_READDIR_EXTENDED ; 
 int VNODE_READDIR_REQSEEKOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct proc* FUNC1 () ; 
 int /*<<< orphan*/ ** FUNC2 (struct proc*,int) ; 
 int* FUNC3 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC5 (struct uio*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct uio*) ; 

int
FUNC7(struct vnop_readdir_args *ap)
{
	struct uio *uio = ap->a_uio;
	struct proc *p = FUNC1();
	int i, error;

	/*
	 * We don't allow exporting fdesc mounts, and currently local
	 * requests do not need cookies.
	 */
	if (ap->a_flags & (VNODE_READDIR_EXTENDED | VNODE_READDIR_REQSEEKOFF))
		return (EINVAL);

	/*
	 * There needs to be space for at least one entry.
	 */
	if (FUNC5(uio) < UIO_MX)
		return (EINVAL);

	i = uio->uio_offset / UIO_MX;
	error = 0;
	while (FUNC5(uio) >= UIO_MX) {
		if (i >= p->p_fd->fd_nfiles)
			break;

		if (*FUNC2(p, i) != NULL && !(*FUNC3(p, i) & UF_RESERVED)) {
			struct dirent d;
			struct dirent *dp = &d;

			FUNC0((caddr_t) dp, UIO_MX);

			dp->d_namlen = FUNC4(dp->d_name, sizeof(dp->d_name),
						"%d", i);
			dp->d_reclen = UIO_MX;
			dp->d_type = DT_UNKNOWN;
			dp->d_fileno = i + FD_STDIN;
			/*
			 * And ship to userland
			 */
			error = FUNC6((caddr_t) dp, UIO_MX, uio);
			if (error)
				break;
		}
		i++;
	}

	uio->uio_offset = i * UIO_MX;
	return (error);
}