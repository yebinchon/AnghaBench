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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int user_size_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode {int dummy; } ;
struct user64_stat64 {int dummy; } ;
struct user64_stat {int dummy; } ;
struct user32_stat64 {int dummy; } ;
struct user32_stat {int dummy; } ;
struct stat64 {long long* st_qspare; scalar_t__ st_lspare; } ;
struct stat {long long* st_qspare; scalar_t__ st_lspare; } ;
struct socket {int dummy; } ;
struct fileproc {int f_type; scalar_t__ f_data; TYPE_1__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ kauth_filesec_t ;
typedef  int file_type_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int,int,...) ; 
#define  DTYPE_KQUEUE 132 
#define  DTYPE_PIPE 131 
#define  DTYPE_PSXSHM 130 
#define  DTYPE_SOCKET 129 
#define  DTYPE_VNODE 128 
 int EBADF ; 
 int EFAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ KAUTH_FILESEC_NONE ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stat*,struct user32_stat*) ; 
 int /*<<< orphan*/  FUNC11 (struct stat64*,struct user32_stat64*) ; 
 int /*<<< orphan*/  FUNC12 (struct stat*,struct user64_stat*) ; 
 int /*<<< orphan*/  FUNC13 (struct stat64*,struct user64_stat64*) ; 
 int FUNC14 (void*,void*,int) ; 
 int FUNC15 (void*,void*,int) ; 
 int FUNC16 (struct socket*,void*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (int /*<<< orphan*/ ,void*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnpath ; 

__attribute__((used)) static int
FUNC23(proc_t p, int fd, user_addr_t ub, user_addr_t xsecurity, user_addr_t xsecurity_size, int isstat64)
{
	struct fileproc *fp;
	union {
		struct stat sb;
		struct stat64 sb64;
	} source;
	union {
		struct user64_stat user64_sb;
		struct user32_stat user32_sb;
		struct user64_stat64 user64_sb64;
		struct user32_stat64 user32_sb64;
	} dest;
	int error, my_size;
	file_type_t type;
	caddr_t data;
	kauth_filesec_t fsec;
	user_size_t xsecurity_bufsize;
	vfs_context_t ctx = FUNC18();
	void * sbptr;


	FUNC0(fd, fd);

	if ((error = FUNC6(p, fd, &fp, 0)) != 0) {
		return(error);
	}
	type = fp->f_type;
	data = fp->f_data;
	fsec = KAUTH_FILESEC_NONE;

	sbptr = (void *)&source;

	switch (type) {

	case DTYPE_VNODE:
		if ((error = FUNC21((vnode_t)data)) == 0) {
			/*
			 * If the caller has the file open, and is not
			 * requesting extended security information, we are
			 * going to let them get the basic stat information.
			 */
			if (xsecurity == USER_ADDR_NULL) {
				error = FUNC20((vnode_t)data, sbptr, NULL, isstat64, ctx,
						       fp->f_fglob->fg_cred);
			} else {
				error = FUNC19((vnode_t)data, sbptr, &fsec, isstat64, ctx);
			}

			FUNC0(vnpath, (struct vnode *)data, ARG_VNODE1);
			(void)FUNC22((vnode_t)data);
		}
		break;

#if SOCKETS
	case DTYPE_SOCKET:
		error = soo_stat((struct socket *)data, sbptr, isstat64);
		break;
#endif /* SOCKETS */

	case DTYPE_PIPE:
		error = FUNC14((void *)data, sbptr, isstat64);
		break;

	case DTYPE_PSXSHM:
		error = FUNC15((void *)data, sbptr, isstat64);
		break;

	case DTYPE_KQUEUE:
		error = FUNC9((void *)data, sbptr, isstat64, p);
		break;

	default:
		error = EBADF;
		goto out;
	}
	if (error == 0) {
		caddr_t sbp;

		if (isstat64 != 0) {
			source.sb64.st_lspare = 0;
			source.sb64.st_qspare[0] = 0LL;
			source.sb64.st_qspare[1] = 0LL;

			if (FUNC1(FUNC4())) {
				FUNC13(&source.sb64, &dest.user64_sb64);
				my_size = sizeof(dest.user64_sb64);
				sbp = (caddr_t)&dest.user64_sb64;
			} else {
				FUNC11(&source.sb64, &dest.user32_sb64);
				my_size = sizeof(dest.user32_sb64);
				sbp = (caddr_t)&dest.user32_sb64;
			}
		} else {
			source.sb.st_lspare = 0;
			source.sb.st_qspare[0] = 0LL;
			source.sb.st_qspare[1] = 0LL;
			if (FUNC1(FUNC4())) {
				FUNC12(&source.sb, &dest.user64_sb);
				my_size = sizeof(dest.user64_sb);
				sbp = (caddr_t)&dest.user64_sb;
			} else {
				FUNC10(&source.sb, &dest.user32_sb);
				my_size = sizeof(dest.user32_sb);
				sbp = (caddr_t)&dest.user32_sb;
			}
		}

		error = FUNC3(sbp, ub, my_size);
	}

	/* caller wants extended security information? */
	if (xsecurity != USER_ADDR_NULL) {

		/* did we get any? */
		 if (fsec == KAUTH_FILESEC_NONE) {
			if (FUNC17(xsecurity_size, 0) != 0) {
				error = EFAULT;
				goto out;
			}
		} else {
			/* find the user buffer size */
			xsecurity_bufsize = FUNC7(xsecurity_size);

			/* copy out the actual data size */
			if (FUNC17(xsecurity_size, FUNC2(fsec)) != 0) {
				error = EFAULT;
				goto out;
			}

			/* if the caller supplied enough room, copy out to it */
			if (xsecurity_bufsize >= FUNC2(fsec))
				error = FUNC3(fsec, xsecurity, FUNC2(fsec));
		}
	}
out:
	FUNC5(p, fd, fp, 0);
	if (fsec != NULL)
		FUNC8(fsec);
	return (error);
}