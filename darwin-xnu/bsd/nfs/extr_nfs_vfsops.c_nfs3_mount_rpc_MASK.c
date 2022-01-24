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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct nfsmount {scalar_t__ nm_mountport; } ;
struct nfsm_chain {int /*<<< orphan*/ * nmc_mhead; } ;
struct nfs_sec {int /*<<< orphan*/  count; int /*<<< orphan*/ * flavors; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EPROGUNAVAIL ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  MNTUDP ; 
 scalar_t__ NFSX_UNSIGNED ; 
 int NFS_VER2 ; 
 scalar_t__ FUNC0 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_MAX_SEC_FLAVORS ; 
 int /*<<< orphan*/  RPCAUTH_SYS ; 
 int /*<<< orphan*/  RPCMNT_MOUNT ; 
 int RPCMNT_VER1 ; 
 int RPCMNT_VER3 ; 
 int /*<<< orphan*/  RPCPROG_MNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfsmount*,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct nfsm_chain*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct nfsm_chain*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsm_chain*) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (struct nfsmount*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (void*) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22(struct nfsmount *nmp, struct sockaddr *sa, int sotype, int nfsvers, char *path, vfs_context_t ctx, int timeo, fhandle_t *fh, struct nfs_sec *sec)
{
	int error = 0, slen, mntproto;
	thread_t thd = FUNC20(ctx);
	kauth_cred_t cred = FUNC21(ctx);
	uint64_t xid = 0;
	struct nfsm_chain nmreq, nmrep;
	mbuf_t mreq;
	uint32_t mntvers, mntport, val;
	struct sockaddr_storage ss;
	struct sockaddr *saddr = (struct sockaddr*)&ss;

	FUNC14(&nmreq);
	FUNC14(&nmrep);

	mntvers = (nfsvers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
	mntproto = (FUNC0(nmp, MNTUDP) || (sotype == SOCK_DGRAM)) ? IPPROTO_UDP : IPPROTO_TCP;
	sec->count = 0;

	FUNC2(sa, saddr, FUNC4(sizeof(ss), sa->sa_len));
	if (saddr->sa_family == AF_INET) {
		if (nmp->nm_mountport)
			((struct sockaddr_in*)saddr)->sin_port = FUNC3(nmp->nm_mountport);
		mntport = FUNC18(((struct sockaddr_in*)saddr)->sin_port);
	} else {
		if (nmp->nm_mountport)
			((struct sockaddr_in6*)saddr)->sin6_port = FUNC3(nmp->nm_mountport);
		mntport = FUNC18(((struct sockaddr_in6*)saddr)->sin6_port);
	}

	while (!mntport) {
		error = FUNC6(nmp, ctx, saddr, NULL, RPCPROG_MNT, mntvers, mntproto, timeo);
		FUNC17(error);
		if (saddr->sa_family == AF_INET)
			mntport = FUNC18(((struct sockaddr_in*)saddr)->sin_port);
		else
			mntport = FUNC18(((struct sockaddr_in6*)saddr)->sin6_port);
		if (!mntport) {
			/* if not found and TCP, then retry with UDP */
			if (mntproto == IPPROTO_UDP) {
				error = EPROGUNAVAIL;
				break;
			}
			mntproto = IPPROTO_UDP;
			FUNC2(sa, saddr, FUNC4(sizeof(ss), sa->sa_len));
		}
	}
	FUNC17(error || !mntport);

	/* MOUNT protocol MOUNT request */
	slen = FUNC19(path);
	FUNC8(error, &nmreq, NFSX_UNSIGNED + FUNC15(slen));
	FUNC7(error, &nmreq, path, slen, nmp);
	FUNC9(error, &nmreq);
	FUNC17(error);
	error = FUNC16(nmp, (mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM,
			RPCPROG_MNT, mntvers, RPCMNT_MOUNT,
			RPCAUTH_SYS, cred, NULL, nmreq.nmc_mhead, &xid, &mreq);
	FUNC17(error);
	nmreq.nmc_mhead = NULL;
	error = FUNC5(nmp, thd, saddr, NULL,
			((mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM),
			mreq, FUNC1(xid), 1, timeo, &nmrep);
	FUNC17(error);
	FUNC11(error, &nmrep, val);
	if (!error && val)
		error = val;
	FUNC12(error, &nmrep, nfsvers, fh);
	if (!error && (nfsvers > NFS_VER2)) {
		sec->count = NX_MAX_SEC_FLAVORS;
		error = FUNC13(&nmrep, &sec->flavors[0], &sec->count);
	}
nfsmout:
	FUNC10(&nmreq);
	FUNC10(&nmrep);
	return (error);
}