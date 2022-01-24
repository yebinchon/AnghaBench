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
struct vnop_lookup_args {int /*<<< orphan*/  a_context; struct componentname* a_cnp; struct vnode* a_dvp; struct vnode** a_vpp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct proc {TYPE_1__* p_fd; } ;
struct componentname {char* cn_nameptr; int cn_namelen; } ;
struct TYPE_2__ {int fd_nfiles; } ;

/* Variables and functions */
 int EBADF ; 
 int ENOENT ; 
 scalar_t__ FD_DESC ; 
 int /*<<< orphan*/  Fdesc ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  VNON ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct vnode**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** FUNC1 (struct proc*,int) ; 
 int* FUNC2 (struct proc*,int) ; 
 struct proc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*) ; 

int
FUNC5(struct vnop_lookup_args *ap)
{
	struct vnode **vpp = ap->a_vpp;
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	char *pname = cnp->cn_nameptr;
	struct proc *p = FUNC3(ap->a_context);
	int numfiles = p->p_fd->fd_nfiles;
	int fd;
	int error;
	struct vnode *fvp;

	if (cnp->cn_namelen == 1 && *pname == '.') {
		*vpp = dvp;
		
		if ( (error = FUNC4(dvp)) ) {
			return(error);
		}
		return (0);
	}

	fd = 0;
	while (*pname >= '0' && *pname <= '9') {
		fd = 10 * fd + *pname++ - '0';
		if (fd >= numfiles)
			break;
	}

	if (*pname != '\0') {
		error = ENOENT;
		goto bad;
	}

	if (fd < 0 || fd >= numfiles ||
			*FUNC1(p, fd) == NULL ||
			(*FUNC2(p, fd) & UF_RESERVED)) {
		error = EBADF;
		goto bad;
	}

	error = FUNC0(Fdesc, FD_DESC+fd, dvp->v_mount, &fvp, VNON, fd);
	if (error)
		goto bad;
	*vpp = fvp;
	return (0);

bad:
	*vpp = NULL;
	return (error);
}