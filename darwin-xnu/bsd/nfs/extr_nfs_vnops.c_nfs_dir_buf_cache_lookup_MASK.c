#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsmount {int dummy; } ;
struct nfsbuflists {int dummy; } ;
struct nfsbuf {int /*<<< orphan*/  nb_lblkno; } ;
struct nfs_vattr {int dummy; } ;
struct componentname {int cn_namelen; char* cn_nameptr; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_16__ {int /*<<< orphan*/  fh_len; int /*<<< orphan*/  fh_data; } ;
typedef  TYPE_2__ fhandle_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
struct TYPE_15__ {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_xid; int /*<<< orphan*/  n_auth; int /*<<< orphan*/  n_lastdbl; int /*<<< orphan*/  n_cleanblkhd; } ;

/* Variables and functions */
 int ENXIO ; 
 int ESRCH ; 
 struct nfsbuf* FUNC0 (struct nfsbuflists*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsbuf*,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBAC_NOWAIT ; 
 int /*<<< orphan*/  NBI_CLEAN ; 
 int NBLK_ONLYVALID ; 
 int NBLK_READ ; 
 int /*<<< orphan*/  NDBS_PURGE ; 
 int /*<<< orphan*/  NDBS_UPDATE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct nfsmount* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  NFS_DIRBLKSIZ ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int /*<<< orphan*/  NG_MAKEENTRY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nb_vnbufs ; 
 scalar_t__ FUNC8 (struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsbuf*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nfsbuf**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct nfsbuflists*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct nfsbuflists*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC13 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct nfsbuf*,struct componentname*,TYPE_2__*,struct nfs_vattr*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,struct nfs_vattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct nfsmount*) ; 
 int FUNC19 (int /*<<< orphan*/ ,TYPE_1__*,struct componentname*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22(nfsnode_t dnp, nfsnode_t *npp, struct componentname *cnp, vfs_context_t ctx, int purge)
{
	nfsnode_t newnp;
	struct nfsmount *nmp;
	int error = 0, i, found = 0, count = 0;
	u_int64_t xid;
	struct nfs_vattr nvattr;
	fhandle_t fh;
	time_t attrstamp = 0;
	thread_t thd = FUNC21(ctx);
	struct nfsbuf *bp, *lastbp, *foundbp;
	struct nfsbuflists blist;
	daddr64_t lbn, nextlbn;
	int dotunder = (cnp->cn_namelen > 2) && (cnp->cn_nameptr[0] == '.') && (cnp->cn_nameptr[1] == '_');

	nmp = FUNC5(dnp);
	if (FUNC18(nmp))
		return (ENXIO);
	if (!purge)
		*npp = NULL;

	/* first check most recent buffer (and next one too) */
	lbn = dnp->n_lastdbl;
	for (i=0; i < 2; i++) {
		if ((error = FUNC10(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ|NBLK_ONLYVALID, &bp)))
			return (error);
		if (!bp)
			break;
		count++;
		error = FUNC16(bp, cnp, &fh, &nvattr, &xid, &attrstamp, &nextlbn, purge ? NDBS_PURGE : 0);
		FUNC15(bp, 0);
		if (error == ESRCH) {
			error = 0;
		} else {
			found = 1;
			break;
		}
		lbn = nextlbn;
	}

	FUNC6(nfs_buf_mutex);
	if (found) {
		dnp->n_lastdbl = lbn;
		goto done;
	}

	/*
	 * Scan the list of buffers, keeping them in order.
	 * Note that itercomplete inserts each of the remaining buffers
	 * into the head of list (thus reversing the elements).  So, we
	 * make sure to iterate through all buffers, inserting them after
	 * each other, to keep them in order.
	 * Also note: the LIST_INSERT_AFTER(lastbp) is only safe because
	 * we don't drop nfs_buf_mutex.
	 */
	if (!FUNC12(dnp, &blist, NBI_CLEAN)) {
		lastbp = foundbp = NULL;
		while ((bp = FUNC0(&blist))) {
			FUNC3(bp, nb_vnbufs);
			if (!lastbp)
				FUNC2(&dnp->n_cleanblkhd, bp, nb_vnbufs);
			else
				FUNC1(lastbp, bp, nb_vnbufs);
			lastbp = bp;
			if (error || found)
				continue;
			if (!purge && dotunder && (count > 100)) /* don't waste too much time looking for ._ files */
				continue;
			FUNC13(bp);
			lbn = bp->nb_lblkno;
			if (FUNC8(bp, NBAC_NOWAIT, 0, 0)) {
				/* just skip this buffer */
				FUNC14(bp);
				continue;
			}
			FUNC14(bp);
			count++;
			error = FUNC16(bp, cnp, &fh, &nvattr, &xid, &attrstamp, NULL, purge ? NDBS_PURGE : 0);
			if (error == ESRCH) {
				error = 0;
			} else {
				found = 1;
				foundbp = bp;
			}
			FUNC9(bp);
		}
		if (found) {
			FUNC3(foundbp, nb_vnbufs);
			FUNC2(&dnp->n_cleanblkhd, foundbp, nb_vnbufs);
			dnp->n_lastdbl = foundbp->nb_lblkno;
		}
		FUNC11(dnp, &blist, NBI_CLEAN);
	}
done:
	FUNC7(nfs_buf_mutex);

	if (!error && found && !purge) {
		error = FUNC19(FUNC4(dnp), dnp, cnp, fh.fh_data, fh.fh_len,
				&nvattr, &xid, dnp->n_auth, NG_MAKEENTRY, &newnp);
		if (error)
			return (error);
		newnp->n_attrstamp = attrstamp;
		*npp = newnp;
		FUNC20(newnp);
		/* check if the dir buffer's attrs are out of date */
		if (!FUNC17(newnp, &nvattr, ctx, NGA_CACHED) &&
		    (newnp->n_attrstamp != attrstamp)) {
			/* they are, so update them */
			error = FUNC10(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ|NBLK_ONLYVALID, &bp);
			if (!error && bp) {
				attrstamp = newnp->n_attrstamp;
				xid = newnp->n_xid;
				FUNC16(bp, cnp, &fh, &nvattr, &xid, &attrstamp, NULL, NDBS_UPDATE);
				FUNC15(bp, 0);
			}
			error = 0;
		}
	}

	return (error);
}