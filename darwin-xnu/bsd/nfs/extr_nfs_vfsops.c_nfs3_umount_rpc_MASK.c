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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct nfsmount {scalar_t__ nm_vers; scalar_t__ nm_sotype; scalar_t__ nm_mountport; int /*<<< orphan*/  nm_mountp; TYPE_2__* nm_saddr; } ;
struct nfsm_chain {int /*<<< orphan*/ * nmc_mhead; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_4__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_3__ {char* f_mntfromname; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  MNTUDP ; 
 scalar_t__ NFSX_UNSIGNED ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPCAUTH_SYS ; 
 int /*<<< orphan*/  RPCMNT_UMOUNT ; 
 scalar_t__ RPCMNT_VER1 ; 
 scalar_t__ RPCMNT_VER3 ; 
 int /*<<< orphan*/  RPCPROG_MNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct nfsm_chain*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsm_chain*) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (struct nfsmount*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (void*) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ) ; 

void
FUNC20(struct nfsmount *nmp, vfs_context_t ctx, int timeo)
{
	int error = 0, slen, mntproto;
	thread_t thd = FUNC17(ctx);
	kauth_cred_t cred = FUNC18(ctx);
	char *path;
	uint64_t xid = 0;
	struct nfsm_chain nmreq, nmrep;
	mbuf_t mreq;
	uint32_t mntvers, mntport;
	struct sockaddr_storage ss;
	struct sockaddr *saddr = (struct sockaddr*)&ss;

	if (!nmp->nm_saddr)
		return;

	FUNC11(&nmreq);
	FUNC11(&nmrep);

	mntvers = (nmp->nm_vers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
	mntproto = (FUNC0(nmp, MNTUDP) || (nmp->nm_sotype == SOCK_DGRAM)) ? IPPROTO_UDP : IPPROTO_TCP;
	mntport = nmp->nm_mountport;

	FUNC2(nmp->nm_saddr, saddr, FUNC4(sizeof(ss), nmp->nm_saddr->sa_len));
	if (saddr->sa_family == AF_INET)
		((struct sockaddr_in*)saddr)->sin_port = FUNC3(mntport);
	else
		((struct sockaddr_in6*)saddr)->sin6_port = FUNC3(mntport);

	while (!mntport) {
		error = FUNC6(nmp, ctx, saddr, NULL, RPCPROG_MNT, mntvers, mntproto, timeo);
  		FUNC14(error);
		if (saddr->sa_family == AF_INET)
			mntport = FUNC15(((struct sockaddr_in*)saddr)->sin_port);
		else
			mntport = FUNC15(((struct sockaddr_in6*)saddr)->sin6_port);
		/* if not found and mntvers > VER1, then retry with VER1 */
		if (!mntport) {
			if (mntvers > RPCMNT_VER1) {
				mntvers = RPCMNT_VER1;
			} else if (mntproto == IPPROTO_TCP) {
				mntproto = IPPROTO_UDP;
				mntvers = (nmp->nm_vers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
			} else {
				break;
			}
			FUNC2(nmp->nm_saddr, saddr, FUNC4(sizeof(ss), nmp->nm_saddr->sa_len));
		}
	}
	FUNC14(!mntport);

	/* MOUNT protocol UNMOUNT request */
	path = &FUNC19(nmp->nm_mountp)->f_mntfromname[0];
	while (*path && (*path != '/'))
		path++;
	slen = FUNC16(path);
	FUNC8(error, &nmreq, NFSX_UNSIGNED + FUNC12(slen));
	FUNC7(error, &nmreq, path, slen, nmp);
	FUNC9(error, &nmreq);
	FUNC14(error);
	error = FUNC13(nmp, (mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM,
			RPCPROG_MNT, RPCMNT_VER1, RPCMNT_UMOUNT,
			RPCAUTH_SYS, cred, NULL, nmreq.nmc_mhead, &xid, &mreq);
	FUNC14(error);
	nmreq.nmc_mhead = NULL;
	error = FUNC5(nmp, thd, saddr, NULL,
		((mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM),
		mreq, FUNC1(xid), 1, timeo, &nmrep);
nfsmout:
	FUNC10(&nmreq);
	FUNC10(&nmrep);
}