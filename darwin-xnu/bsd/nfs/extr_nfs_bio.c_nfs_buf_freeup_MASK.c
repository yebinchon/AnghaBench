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
struct timeval {scalar_t__ tv_sec; } ;
struct nfsbuffreehead {int dummy; } ;
struct TYPE_2__ {scalar_t__ le_next; } ;
struct nfsbuf {scalar_t__ nb_timestamp; int /*<<< orphan*/  nb_bufsize; scalar_t__ nb_data; int /*<<< orphan*/  nb_flags; int /*<<< orphan*/  nb_wcred; int /*<<< orphan*/  nb_rcred; int /*<<< orphan*/ * nb_np; TYPE_1__ nb_vnbufs; scalar_t__ nb_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int LRU_FREEUP_FRAC_ON_TIMER ; 
 int LRU_TO_FREEUP ; 
 int META_FREEUP_FRAC_ON_TIMER ; 
 int META_TO_FREEUP ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC5 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NB_META ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int NFSBUF_LRU_STALE ; 
 int NFSBUF_META_STALE ; 
 scalar_t__ NFSNOLIST ; 
 struct nfsbuf* FUNC7 (struct nfsbuffreehead*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsbuffreehead*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsbuffreehead*,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuffreehead*,struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*) ; 
 int /*<<< orphan*/  nb_free ; 
 int /*<<< orphan*/  nb_hash ; 
 int /*<<< orphan*/  nb_vnbufs ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC16 (struct nfsbuf*) ; 
 scalar_t__ nfsbufcnt ; 
 struct nfsbuffreehead nfsbuffree ; 
 int nfsbuffreecnt ; 
 struct nfsbuffreehead nfsbuffreemeta ; 
 int nfsbuffreemetacnt ; 
 int /*<<< orphan*/  nfsbufmetacnt ; 
 scalar_t__ nfsbufmin ; 

void
FUNC17(int timer)
{
	struct nfsbuf *fbp;
	struct timeval now;
	int count;
	struct nfsbuffreehead nfsbuffreeup;

	FUNC8(&nfsbuffreeup);

	FUNC13(nfs_buf_mutex);

	FUNC15(&now);

	FUNC1(320, nfsbufcnt, nfsbuffreecnt, nfsbuffreemetacnt, 0);

	count = timer ? nfsbuffreecnt/LRU_FREEUP_FRAC_ON_TIMER : LRU_TO_FREEUP;
	while ((nfsbufcnt > nfsbufmin) && (count-- > 0)) {
		fbp = FUNC7(&nfsbuffree);
		if (!fbp)
			break;
		if (fbp->nb_refs)
			break;
		if (FUNC5(fbp) &&
		    (fbp->nb_timestamp + (2*NFSBUF_LRU_STALE)) > now.tv_sec)
			break;
		FUNC16(fbp);
		/* disassociate buffer from any nfsnode */
		if (fbp->nb_np) {
			if (fbp->nb_vnbufs.le_next != NFSNOLIST) {
				FUNC4(fbp, nb_vnbufs);
				fbp->nb_vnbufs.le_next = NFSNOLIST;
			}
			fbp->nb_np = NULL;
		}
		FUNC4(fbp, nb_hash);
		FUNC9(&nfsbuffreeup, fbp, nb_free);
		nfsbufcnt--;
	}

	count = timer ? nfsbuffreemetacnt/META_FREEUP_FRAC_ON_TIMER : META_TO_FREEUP;
	while ((nfsbufcnt > nfsbufmin) && (count-- > 0)) {
		fbp = FUNC7(&nfsbuffreemeta);
		if (!fbp)
			break;
		if (fbp->nb_refs)
			break;
		if (FUNC5(fbp) &&
		    (fbp->nb_timestamp + (2*NFSBUF_META_STALE)) > now.tv_sec)
			break;
		FUNC16(fbp);
		/* disassociate buffer from any nfsnode */
		if (fbp->nb_np) {
			if (fbp->nb_vnbufs.le_next != NFSNOLIST) {
				FUNC4(fbp, nb_vnbufs);
				fbp->nb_vnbufs.le_next = NFSNOLIST;
			}
			fbp->nb_np = NULL;
		}
		FUNC4(fbp, nb_hash);
		FUNC9(&nfsbuffreeup, fbp, nb_free);
		nfsbufcnt--;
		nfsbufmetacnt--;
	}

	FUNC1(320, nfsbufcnt, nfsbuffreecnt, nfsbuffreemetacnt, 0);
	FUNC6();

	FUNC14(nfs_buf_mutex);

	while ((fbp = FUNC7(&nfsbuffreeup))) {
		FUNC10(&nfsbuffreeup, fbp, nb_free);
		/* nuke any creds */
		if (FUNC3(fbp->nb_rcred))
			FUNC11(&fbp->nb_rcred);
		if (FUNC3(fbp->nb_wcred))
			FUNC11(&fbp->nb_wcred);
		/* if buf was NB_META, dump buffer */
		if (FUNC2(fbp->nb_flags, NB_META) && fbp->nb_data)
			FUNC12(fbp->nb_data, fbp->nb_bufsize);
		FUNC0(fbp, M_TEMP);
	}

}