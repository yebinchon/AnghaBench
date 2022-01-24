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
typedef  scalar_t__ u_int32_t ;
struct vnode {int dummy; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct quotafile {scalar_t__ qf_btime; scalar_t__ qf_itime; struct vnode* qf_vp; } ;
struct TYPE_2__ {struct dquot* le_next; } ;
struct dquot {scalar_t__ dq_id; int dq_cnt; int dq_flags; int dq_type; scalar_t__ dq_isoftlimit; scalar_t__ dq_bsoftlimit; scalar_t__ dq_ihardlimit; scalar_t__ dq_bhardlimit; scalar_t__ dq_btime; scalar_t__ dq_itime; struct quotafile* dq_qfile; int /*<<< orphan*/  dq_index; int /*<<< orphan*/  dq_dqb; TYPE_1__ dq_hash; } ;
struct dqhash {struct dquot* lh_first; } ;

/* Variables and functions */
 struct dqhash* FUNC0 (struct vnode*,scalar_t__) ; 
 scalar_t__ DQUOTINC ; 
 int DQ_FAKE ; 
 int DQ_MOD ; 
 int EINVAL ; 
 int EUSERS ; 
 int /*<<< orphan*/  FUNC1 (struct dqhash*,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dquot*,int /*<<< orphan*/ ) ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  M_DQUOT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct dquot* NODQUOT ; 
 struct vnode* NULLVP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct dquot* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dquot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int desireddquot ; 
 int desiredvnodes ; 
 int /*<<< orphan*/  dq_freelist ; 
 int /*<<< orphan*/  dq_hash ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC15 (struct dquot*) ; 
 int /*<<< orphan*/  dqdirtylist ; 
 int /*<<< orphan*/  dqfreelist ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (struct quotafile*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC19 (struct timeval*) ; 
 int numdquot ; 
 scalar_t__ FUNC20 (struct quotafile*) ; 
 int /*<<< orphan*/  FUNC21 (struct quotafile*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int
FUNC23(u_int32_t id, struct quotafile *qfp, int type, struct dquot **dqp)
{
	struct dquot *dq;
	struct dquot *ndq = NULL;
	struct dquot *fdq = NULL;
	struct dqhash *dqh;
	struct vnode *dqvp;
	int error = 0;
	int listlockval = 0;

	if (!FUNC16()) {
		*dqp = NODQUOT;
		return (EINVAL);
	}

	if ( id == 0 || qfp->qf_vp == NULLVP ) {
		*dqp = NODQUOT;
		return (EINVAL);
	}
	FUNC10();

	if ( (FUNC20(qfp)) ) {
	        FUNC13();

		*dqp = NODQUOT;
		return (EINVAL);
	}
	if ( (dqvp = qfp->qf_vp) == NULLVP ) {
	        FUNC21(qfp);
		FUNC13();

		*dqp = NODQUOT;
		return (EINVAL);
	}
	dqh = FUNC0(dqvp, id);

relookup:
	listlockval = FUNC12();

	/*
	 * Check the cache first.
	 */
	for (dq = dqh->lh_first; dq; dq = dq->dq_hash.le_next) {
		if (dq->dq_id != id ||
		    dq->dq_qfile->qf_vp != dqvp)
			continue;

		FUNC14(dq);
		if (FUNC11(listlockval)) {
			FUNC15(dq);
			goto relookup;
		}

		/*
		 * dq_lock_internal may drop the quota_list_lock to msleep, so
		 * we need to re-evaluate the identity of this dq
		 */
		if (dq->dq_id != id || dq->dq_qfile == NULL ||
		    dq->dq_qfile->qf_vp != dqvp) {
		        FUNC15(dq);
			goto relookup;
		}
		/*
		 * Cache hit with no references.  Take
		 * the structure off the free list.
		 */
		if (dq->dq_cnt++ == 0) {
			if (dq->dq_flags & DQ_MOD)
				FUNC6(&dqdirtylist, dq, dq_freelist);
			else
				FUNC6(&dqfreelist, dq, dq_freelist);
		}
		FUNC15(dq);

		if (fdq != NULL) {
		        /*
			 * we grabbed this from the free list in the first pass
			 * but we found the dq we were looking for in
			 * the cache the 2nd time through
			 * so stick it back on the free list and return the cached entry
			 */
		        FUNC5(&dqfreelist, fdq, dq_freelist);
		}
		FUNC21(qfp);
	        FUNC13();
		
		if (ndq != NULL) {
		        /*
			 * we allocated this in the first pass
			 * but we found the dq we were looking for in
			 * the cache the 2nd time through so free it
			 */
		        FUNC7(ndq, M_DQUOT);
		}
		*dqp = dq;

		return (0);
	}
	/*
	 * Not in cache, allocate a new one.
	 */
	if (FUNC3(&dqfreelist) &&
	    numdquot < MAXQUOTAS * desiredvnodes)
		desireddquot += DQUOTINC;

	if (fdq != NULL) {
	        /*
		 * we captured this from the free list
		 * in the first pass through, so go
		 * ahead and use it
		 */
	        dq = fdq;
		fdq = NULL;
	} else if (numdquot < desireddquot) {
	        if (ndq == NULL) {
		        /*
			 * drop the quota list lock since MALLOC may block
			 */
		        FUNC13();

			ndq = (struct dquot *)FUNC8(sizeof *dq, M_DQUOT, M_WAITOK);
			FUNC9((char *)ndq, sizeof *dq);

		        listlockval = FUNC10();
			/*
			 * need to look for the entry again in the cache
			 * since we dropped the quota list lock and
			 * someone else may have beaten us to creating it
			 */
			goto relookup;
		} else {
		        /*
			 * we allocated this in the first pass through
			 * and we're still under out target, so go
			 * ahead and use it
			 */
		        dq = ndq;
			ndq = NULL;
			numdquot++;
		}
	} else {
	        if (FUNC3(&dqfreelist)) {
		        FUNC21(qfp);
		        FUNC13();

			if (ndq) {
			        /*
				 * we allocated this in the first pass through
				 * but we're now at the limit of our cache size
				 * so free it
				 */
			        FUNC7(ndq, M_DQUOT);
			}
			FUNC22("dquot");
			*dqp = NODQUOT;
			return (EUSERS);
		}
		dq = FUNC4(&dqfreelist);

		FUNC14(dq);

		if (FUNC11(listlockval) || dq->dq_cnt || (dq->dq_flags & DQ_MOD)) {
		        /*
			 * we lost the race while we weren't holding
			 * the quota list lock... dq_lock_internal
			 * will drop it to msleep... this dq has been
			 * reclaimed... go find another
			 */
		        FUNC15(dq);

			/*
			 * need to look for the entry again in the cache
			 * since we dropped the quota list lock and
			 * someone else may have beaten us to creating it
			 */
			goto relookup;
		}
		FUNC6(&dqfreelist, dq, dq_freelist);

		if (dq->dq_qfile != NULL) {
		        FUNC2(dq, dq_hash);
			dq->dq_qfile = NULL;
			dq->dq_id = 0;
		}
		FUNC15(dq);

		/*
		 * because we may have dropped the quota list lock
		 * in the call to dq_lock_internal, we need to 
		 * relookup in the hash in case someone else
		 * caused a dq with this identity to be created...
		 * if we don't find it, we'll use this one
		 */
		fdq = dq;
		goto relookup;
	}
	/*
	 * we've either freshly allocated a dq
	 * or we've atomically pulled it out of
	 * the hash and freelists... no one else
	 * can have a reference, which means no
	 * one else can be trying to use this dq
	 */
	FUNC14(dq);
	if (FUNC11(listlockval)) {
		FUNC15(dq);
		goto relookup;
	}

	/*
	 * Initialize the contents of the dquot structure.
	 */
	dq->dq_cnt = 1;
	dq->dq_flags = 0;
	dq->dq_id = id;
	dq->dq_qfile = qfp;
	dq->dq_type = type;
	/*
	 * once we insert it in the hash and
	 * drop the quota_list_lock, it can be
	 * 'found'... however, we're still holding
	 * the dq_lock which will keep us from doing
	 * anything with it until we've finished
	 * initializing it...
	 */
	FUNC1(dqh, dq, dq_hash);
	FUNC13();

	if (ndq) {
	        /*
		 * we allocated this in the first pass through
		 * but we didn't need it, so free it after
		 * we've droped the quota list lock
		 */
	        FUNC7(ndq, M_DQUOT);
	}

	error = FUNC17(qfp, id, &dq->dq_dqb, &dq->dq_index);

	/*
	 * I/O error in reading quota file, release
	 * quota structure and reflect problem to caller.
	 */
	if (error) {
	        FUNC10();

		dq->dq_id = 0;
		dq->dq_qfile = NULL;
		FUNC2(dq, dq_hash);

		FUNC15(dq);
		FUNC21(qfp);
	        FUNC13();

		FUNC18(dq);

		*dqp = NODQUOT;
		return (error);
	}
	/*
	 * Check for no limit to enforce.
	 * Initialize time values if necessary.
	 */
	if (dq->dq_isoftlimit == 0 && dq->dq_bsoftlimit == 0 &&
	    dq->dq_ihardlimit == 0 && dq->dq_bhardlimit == 0)
		dq->dq_flags |= DQ_FAKE;
	if (dq->dq_id != 0) {
		struct timeval tv;

		FUNC19(&tv);
		if (dq->dq_btime == 0)
			dq->dq_btime = tv.tv_sec + qfp->qf_btime;
		if (dq->dq_itime == 0)
			dq->dq_itime = tv.tv_sec + qfp->qf_itime;
	}
	FUNC10();
	FUNC15(dq);
	FUNC21(qfp);
	FUNC13();

	*dqp = dq;
	return (0);
}