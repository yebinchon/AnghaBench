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
struct vnop_open_args {int a_mode; int /*<<< orphan*/  a_context; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_lock; struct fifoinfo* v_fifoinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_lowat; } ;
struct socket {int /*<<< orphan*/  so_state; TYPE_1__ so_snd; } ;
struct fifoinfo {int fi_flags; int fi_readers; int fi_writers; struct socket* fi_readsock; struct socket* fi_writesock; } ;
typedef  int* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int ENXIO ; 
 int FIFO_CREATED ; 
 int FIFO_CREATEWAIT ; 
 int FIFO_INCREATE ; 
 int FREAD ; 
 int FWRITE ; 
 int O_NONBLOCK ; 
 int PCATCH ; 
 int /*<<< orphan*/  PIPE_BUF ; 
 int PRIBIO ; 
 int PSOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SS_CANTRCVMORE ; 
 int /*<<< orphan*/  SS_CANTSENDMORE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int FUNC6 (struct socket*,struct socket*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct socket**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 

int
FUNC11(struct vnop_open_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct fifoinfo *fip;
	struct socket *rso, *wso;
	int error;

	FUNC8(vp);

retry:

	fip = vp->v_fifoinfo;

	if (fip == (struct fifoinfo *)0)
		FUNC2("fifo_open with no fifoinfo");

	if ((fip->fi_flags & FIFO_CREATED) == 0) {
		if (fip->fi_flags & FIFO_INCREATE) {
			fip->fi_flags |= FIFO_CREATEWAIT;	
			error = FUNC1(&fip->fi_flags, &vp->v_lock, PRIBIO | PCATCH, "fifocreatewait", NULL);
			if (error) {
				FUNC9(vp);
				return(error);
			}
			goto retry;
		} else {
			fip->fi_flags |= FIFO_INCREATE;	
			FUNC9(vp);
			if ( (error = FUNC7(AF_LOCAL, &rso, SOCK_STREAM, 0)) ) {
			        goto bad1;
			}

			if ( (error = FUNC7(AF_LOCAL, &wso, SOCK_STREAM, 0)) ) {
				(void)FUNC5(rso);
			        goto bad1;
			}

			if ( (error = FUNC6(wso, rso)) ) {
				(void)FUNC5(wso);
				(void)FUNC5(rso);
			        goto bad1;
			}
			fip->fi_readers = fip->fi_writers = 0;

			/* Lock ordering between wso and rso does not matter here 
		 	 * because they are just created and no one has a reference to them
		 	 */
	        	FUNC3(wso, 1);
			wso->so_state |= SS_CANTRCVMORE;
			wso->so_snd.sb_lowat = PIPE_BUF;
	        	FUNC4(wso, 1);

	        	FUNC3(rso, 1);
			rso->so_state |= SS_CANTSENDMORE;
	        	FUNC4(rso, 1);

			FUNC8(vp);
			fip->fi_readsock = rso;
			fip->fi_writesock = wso;

			fip->fi_flags |= FIFO_CREATED;
			fip->fi_flags &= ~FIFO_INCREATE;
			
			if ((fip->fi_flags & FIFO_CREATEWAIT)) {
				fip->fi_flags &= ~FIFO_CREATEWAIT;
				FUNC10(&fip->fi_flags);
			}
			/* vnode lock is held  to process further */
		}
	}

	/* vnode is locked at this point */
	/* fifo in created already */
	if (ap->a_mode & FREAD) {
		fip->fi_readers++;
		if (fip->fi_readers == 1) {
			FUNC3(fip->fi_writesock, 1);
			fip->fi_writesock->so_state &= ~SS_CANTSENDMORE;
			FUNC4(fip->fi_writesock, 1);

			if (fip->fi_writers > 0)
				FUNC10((caddr_t)&fip->fi_writers);
		}
	}
	if (ap->a_mode & FWRITE) {
		fip->fi_writers++;
		if (fip->fi_writers == 1) {
			FUNC3(fip->fi_readsock, 1);
			fip->fi_readsock->so_state &= ~SS_CANTRCVMORE;
			FUNC4(fip->fi_readsock, 1);
	
			if (fip->fi_readers > 0)
				FUNC10((caddr_t)&fip->fi_readers);
		}
	}
	if ((ap->a_mode & FREAD) && (ap->a_mode & O_NONBLOCK) == 0) {
		if (fip->fi_writers == 0) {
			error = FUNC1((caddr_t)&fip->fi_readers, &vp->v_lock,
					PCATCH | PSOCK, "fifoor", NULL);
			if (error)
				goto bad;
			if (fip->fi_readers == 1) {
				if (fip->fi_writers > 0)
					FUNC10((caddr_t)&fip->fi_writers);
			}
		}
	}
	if (ap->a_mode & FWRITE) {
		if (ap->a_mode & O_NONBLOCK) {
			if (fip->fi_readers == 0) {
					error = ENXIO;
					goto bad;
			}
		} else {
			if (fip->fi_readers == 0) {
				error = FUNC1((caddr_t)&fip->fi_writers,&vp->v_lock,
						PCATCH | PSOCK, "fifoow", NULL);
				if (error)
					goto bad;
				if (fip->fi_writers == 1) {
					if (fip->fi_readers > 0)
						FUNC10((caddr_t)&fip->fi_readers);
				}
			}
		}
	}

	FUNC9(vp);
	return (0);
bad:
	FUNC0(vp, ap->a_mode, ap->a_context, 1);

	FUNC9(vp);
	return (error);
bad1:
	FUNC8(vp);

	fip->fi_flags &= ~FIFO_INCREATE;
			
	if ((fip->fi_flags & FIFO_CREATEWAIT)) {
		fip->fi_flags &= ~FIFO_CREATEWAIT;
		FUNC10(&fip->fi_flags);
	}
	FUNC9(vp);

	return (error);
}