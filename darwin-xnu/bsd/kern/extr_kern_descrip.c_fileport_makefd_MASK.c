#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct fileproc {struct fileglob* f_fglob; } ;
struct fileport_makefd_args {int /*<<< orphan*/  port; } ;
struct fileglob {int dummy; } ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct fileproc* FILEPROC_NULL ; 
 scalar_t__ IPC_PORT_NULL ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 int /*<<< orphan*/  UF_EXCLOSE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fileproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fileproc*) ; 
 struct fileglob* FUNC4 (scalar_t__) ; 
 struct fileproc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fileproc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,struct fileproc*) ; 

int
FUNC13(proc_t p, struct fileport_makefd_args *uap, int32_t *retval)
{
	struct fileglob *fg;
 	struct fileproc *fp = FILEPROC_NULL;
	ipc_port_t port = IPC_PORT_NULL;
	mach_port_name_t send = uap->port;
	kern_return_t res;
	int fd;
	int err;

	res = FUNC8(FUNC7(p->task),
			send, MACH_MSG_TYPE_COPY_SEND, &port);

	if (res != KERN_SUCCESS) {
		err = EINVAL;
		goto out;
	}

	fg = FUNC4(port);
	if (fg == NULL) {
		err = EINVAL;
		goto out;
	}

	fp = FUNC5(NULL);
	if (fp == FILEPROC_NULL) {
		err = ENOMEM;
		goto out;
	}

	fp->f_fglob = fg;
	FUNC3(fp);

 	FUNC10(p);
	err = FUNC0(p, 0, &fd);
	if (err != 0) {
		FUNC11(p);
		FUNC2(fp);
		goto out;
	}
	*FUNC1(p, fd) |= UF_EXCLOSE;

	FUNC12(p, fd, fp);
	FUNC11(p);

	*retval = fd;
	err = 0;
out:
	if ((fp != NULL) && (0 != err)) {
		FUNC6(fp);
	}

	if (IPC_PORT_NULL != port) {
		FUNC9(port);
	}

	return err;
}