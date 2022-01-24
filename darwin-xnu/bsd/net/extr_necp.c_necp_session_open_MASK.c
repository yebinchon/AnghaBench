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
typedef  scalar_t__ uid_t ;
struct proc {int dummy; } ;
struct necp_session_open_args {int dummy; } ;
struct necp_session {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct TYPE_2__ {struct necp_session* fg_data; int /*<<< orphan*/ * fg_ops; scalar_t__ fg_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRIV_NET_PRIVILEGED_NECP_POLICIES ; 
 int UF_EXCLOSE ; 
 int UF_FORKCLOSE ; 
 int FUNC2 (struct proc*,struct fileproc**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int,struct fileproc*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct necp_session* FUNC7 () ; 
 int /*<<< orphan*/  necp_session_fd_ops ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(struct proc *p, struct necp_session_open_args *uap, int *retval)
{
#pragma unused(uap)
	int error = 0;
	struct necp_session *session = NULL;
	struct fileproc *fp = NULL;
	int fd = -1;

	uid_t uid = FUNC6(FUNC11(p));
	if (uid != 0 && FUNC8(FUNC5(), PRIV_NET_PRIVILEGED_NECP_POLICIES, 0) != 0) {
		FUNC1(LOG_ERR, "Process does not hold necessary entitlement to open NECP session");
		error = EACCES;
		goto done;
	}

	error = FUNC2(p, &fp, &fd, FUNC13());
	if (error != 0) {
		goto done;
	}

	session = FUNC7();
	if (session == NULL) {
		error = ENOMEM;
		goto done;
	}

	fp->f_fglob->fg_flag = 0;
	fp->f_fglob->fg_ops = &necp_session_fd_ops;
	fp->f_fglob->fg_data = session;

	FUNC9(p);
	FUNC0(p, fd, (UF_EXCLOSE | UF_FORKCLOSE));
	FUNC12(p, fd, NULL);
	FUNC3(p, fd, fp, 1);
	FUNC10(p);

	*retval = fd;
done:
	if (error != 0) {
		if (fp != NULL) {
			FUNC4(p, fd, fp);
			fp = NULL;
		}
	}

	return (error);
}