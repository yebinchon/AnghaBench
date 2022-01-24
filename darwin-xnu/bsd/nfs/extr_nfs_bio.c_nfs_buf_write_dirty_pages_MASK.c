#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsmount {TYPE_1__* nm_funcs; } ;
struct nfsbuf {int nb_dirty; int nb_bufsize; scalar_t__ nb_verf; int nb_error; int /*<<< orphan*/  nb_flags; scalar_t__ nb_data; TYPE_2__* nb_np; } ;
typedef  scalar_t__ off_t ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_9__ {int /*<<< orphan*/  write_bios; } ;
struct TYPE_8__ {scalar_t__ n_size; } ;
struct TYPE_7__ {int (* nf_commit_rpc ) (TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsbuf*) ; 
 scalar_t__ FUNC3 (struct nfsbuf*,int) ; 
 int /*<<< orphan*/  NB_ERROR ; 
 int /*<<< orphan*/  NB_WRITEINPROG ; 
 int NFSERR_STALEWRITEVERF ; 
 struct nfsmount* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsbuf*) ; 
 int NFS_WRITE_FILESYNC ; 
 int NFS_WRITE_UNSTABLE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__*) ; 
 TYPE_4__ nfsstats ; 
 int FUNC10 (TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct nfsbuf *bp, thread_t thd, kauth_cred_t cred)
{
	nfsnode_t np = bp->nb_np;
	struct nfsmount *nmp = FUNC4(np);
	int error = 0, commit, iomode, iomode2, len, pg, count, npages, off;
	uint32_t dirty = bp->nb_dirty;
	uint64_t wverf;
	uio_t auio;
	char uio_buf [ FUNC8(1) ];

	if (!bp->nb_dirty)
		return (0);

	/* there are pages marked dirty that need to be written out */
	FUNC6(1, &nfsstats.write_bios);
	FUNC5(bp);
	FUNC7(bp->nb_flags, NB_WRITEINPROG);
	npages = bp->nb_bufsize / PAGE_SIZE;
	iomode = NFS_WRITE_UNSTABLE;

	auio = FUNC12(1, 0, UIO_SYSSPACE, UIO_WRITE,
		&uio_buf, sizeof(uio_buf));

again:
	dirty = bp->nb_dirty;
	wverf = bp->nb_verf;
	commit = NFS_WRITE_FILESYNC;
	for (pg = 0; pg < npages; pg++) {
		if (!FUNC3(bp, pg))
			continue;
		count = 1;
		while (((pg + count) < npages) && FUNC3(bp, pg + count))
			count++;
		/* write count pages starting with page pg */
		off = pg * PAGE_SIZE;
		len = count * PAGE_SIZE;
		/* clip writes to EOF */
		if (FUNC2(bp) + off + len > (off_t) np->n_size)
			len -= (FUNC2(bp) + off + len) - np->n_size;
		if (len > 0) {
			iomode2 = iomode;
			FUNC13(auio, FUNC2(bp) + off, UIO_SYSSPACE, UIO_WRITE);
			FUNC11(auio, FUNC0(bp->nb_data + off), len);
			error = FUNC9(np, auio, thd, cred, &iomode2, &bp->nb_verf);
			if (error)
				break;
			if (iomode2 < commit) /* Retain the lowest commitment level returned. */
				commit = iomode2;
			if ((commit != NFS_WRITE_FILESYNC) && (wverf != bp->nb_verf)) {
				/* verifier changed, redo all the writes filesync */
				iomode = NFS_WRITE_FILESYNC;
				goto again;
			}
		}
		/* clear dirty bits */
		while (count--) {
			dirty &= ~(1 << pg);
			if (count) /* leave pg on last page */
				pg++;
		}
	}
	FUNC1(bp->nb_flags, NB_WRITEINPROG);

	if (!error && (commit != NFS_WRITE_FILESYNC)) {
		error = nmp->nm_funcs->nf_commit_rpc(np, FUNC2(bp), bp->nb_bufsize, cred, wverf);
		if (error == NFSERR_STALEWRITEVERF) {
			/* verifier changed, so we need to restart all the writes */
			iomode = NFS_WRITE_FILESYNC;
			goto again;
		}
	}
	if (!error) {
		bp->nb_dirty = dirty;
	} else {
		FUNC7(bp->nb_flags, NB_ERROR);
		bp->nb_error = error;
	}
	return (error);
}