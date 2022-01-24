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
struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; scalar_t__ f_data; int /*<<< orphan*/ * f_ops; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  DBG_FUNC_START ; 
 int EACCES ; 
 scalar_t__ ENTR_SHOULDTRACE ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIV_NET_PRIVILEGED_SOCKET_DELEGATE ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int FUNC3 (struct proc*,struct fileproc**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int,struct fileproc*) ; 
 int /*<<< orphan*/  kEnTrActKernSocket ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  socket ; 
 int /*<<< orphan*/  socketops ; 
 int FUNC12 (int,struct socket**,int,int) ; 
 int FUNC13 (int,struct socket**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15(struct proc *p,
		int domain,
		int type,
		int protocol,
		pid_t epid,
		int32_t *retval,
		int delegate)
{
	struct socket *so;
	struct fileproc *fp;
	int fd, error;

	FUNC0(socket, domain, type, protocol);
#if CONFIG_MACF_SOCKET_SUBSET
	if ((error = mac_socket_check_create(kauth_cred_get(), domain,
	    type, protocol)) != 0)
		return (error);
#endif /* MAC_SOCKET_SUBSET */

	if (delegate) {
		error = FUNC8(FUNC6(),
		    PRIV_NET_PRIVILEGED_SOCKET_DELEGATE, 0);
		if (error)
			return (EACCES);
	}

	error = FUNC3(p, &fp, &fd, FUNC14());
	if (error) {
		return (error);
	}
	fp->f_flag = FREAD|FWRITE;
	fp->f_ops = &socketops;

	if (delegate)
		error = FUNC13(domain, &so, type, protocol, epid);
	else
		error = FUNC12(domain, &so, type, protocol);

	if (error) {
		FUNC5(p, fd, fp);
	} else {
		fp->f_data = (caddr_t)so;

		FUNC9(p);
		FUNC11(p, fd, NULL);

		FUNC4(p, fd, fp, 1);
		FUNC10(p);

		*retval = fd;
		if (ENTR_SHOULDTRACE) {
			FUNC1(kEnTrActKernSocket, DBG_FUNC_START,
			    fd, 0, (int64_t)FUNC2(so));
		}
	}
	return (error);
}