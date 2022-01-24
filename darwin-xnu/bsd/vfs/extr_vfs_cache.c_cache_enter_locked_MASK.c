#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct namecache* tqh_first; } ;
struct nchashhead {struct namecache* lh_first; } ;
struct vnode {char* v_name; TYPE_2__ v_ncchildren; struct nchashhead v_nclinks; } ;
struct TYPE_9__ {scalar_t__ le_prev; struct namecache* le_next; } ;
struct namecache {unsigned int nc_hashval; char const* nc_name; TYPE_1__ nc_hash; struct vnode* nc_dvp; struct vnode* nc_vp; } ;
struct componentname {unsigned int cn_hash; char const* cn_nameptr; unsigned int cn_namelen; } ;
struct TYPE_11__ {int /*<<< orphan*/  nc_negentry; int /*<<< orphan*/  nc_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct nchashhead*) ; 
 int /*<<< orphan*/  FUNC1 (struct nchashhead*,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CACHE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct nchashhead* FUNC2 (struct vnode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 struct namecache* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct namecache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (char const*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct namecache*,int) ; 
 scalar_t__ desiredNegNodes ; 
 scalar_t__ desiredNodes ; 
 unsigned int FUNC11 (char const*,unsigned int) ; 
 int /*<<< orphan*/  nc_child ; 
 scalar_t__ nc_disabled ; 
 int /*<<< orphan*/  nc_entry ; 
 int /*<<< orphan*/  nc_hash ; 
 TYPE_4__ nc_un ; 
 TYPE_2__ nchead ; 
 int /*<<< orphan*/  ncs_enters ; 
 scalar_t__ ncs_negtotal ; 
 int /*<<< orphan*/  ncs_stolen ; 
 TYPE_2__ neghead ; 
 scalar_t__ numcache ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 unsigned int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

__attribute__((used)) static void
FUNC16(struct vnode *dvp, struct vnode *vp, struct componentname *cnp, const char *strname)
{
        struct namecache *ncp, *negp;
	struct nchashhead *ncpp;

	if (nc_disabled) 
		return;

	/*
	 * if the entry is for -ve caching vp is null
	 */
	if ((vp != NULLVP) && (FUNC0(&vp->v_nclinks))) {
	        /*
		 * someone beat us to the punch..
		 * this vnode is already in the cache
		 */
		if (strname != NULL)
			FUNC15(strname);
		return;
	}
	/*
	 * We allocate a new entry if we are less than the maximum
	 * allowed and the one at the front of the list is in use.
	 * Otherwise we use the one at the front of the list.
	 */
	if (numcache < desiredNodes &&
	    ((ncp = nchead.tqh_first) == NULL ||
	      ncp->nc_hash.le_prev != 0)) {
		/*
		 * Allocate one more entry
		 */
		ncp = (struct namecache *)FUNC8(sizeof(*ncp), M_CACHE, M_WAITOK);
		numcache++;
	} else {
		/*
		 * reuse an old entry
		 */
	        ncp = FUNC4(&nchead);
		FUNC7(&nchead, ncp, nc_entry);

		if (ncp->nc_hash.le_prev != 0) {
		       /*
			* still in use... we need to
			* delete it before re-using it
			*/
			FUNC3(ncs_stolen);
			FUNC10(ncp, 0);
		}
	}
	FUNC3(ncs_enters);

	/*
	 * Fill in cache info, if vp is NULL this is a "negative" cache entry.
	 */
	ncp->nc_vp = vp;
	ncp->nc_dvp = dvp;
	ncp->nc_hashval = cnp->cn_hash;

	if (strname == NULL)
		ncp->nc_name = FUNC9(cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, FALSE, 0);
	else
		ncp->nc_name = strname;

	//
	// If the bytes of the name associated with the vnode differ,
	// use the name associated with the vnode since the file system
	// may have set that explicitly in the case of a lookup on a
	// case-insensitive file system where the case of the looked up
	// name differs from what is on disk.  For more details, see:
	//   <rdar://problem/8044697> FSEvents doesn't always decompose diacritical unicode chars in the paths of the changed directories
	// 
	const char *vn_name = vp ? vp->v_name : NULL;
	unsigned int len = vn_name ? FUNC13(vn_name) : 0;
	if (vn_name && ncp && ncp->nc_name && FUNC14(ncp->nc_name, vn_name, len) != 0) {
		unsigned int hash = FUNC11(vn_name, len);
		
		FUNC15(ncp->nc_name);
		ncp->nc_name = FUNC9(vn_name, len, hash, FALSE, 0);
		ncp->nc_hashval = hash;
	}

	/*
	 * make us the newest entry in the cache
	 * i.e. we'll be the last to be stolen
	 */
	FUNC6(&nchead, ncp, nc_entry);

	ncpp = FUNC2(dvp, cnp->cn_hash);
#if DIAGNOSTIC
	{
		struct namecache *p;

		for (p = ncpp->lh_first; p != 0; p = p->nc_hash.le_next)
			if (p == ncp)
				panic("cache_enter: duplicate");
	}
#endif
	/*
	 * make us available to be found via lookup
	 */
	FUNC1(ncpp, ncp, nc_hash);

	if (vp) {
	       /*
		* add to the list of name cache entries
		* that point at vp
		*/
		FUNC1(&vp->v_nclinks, ncp, nc_un.nc_link);
	} else {
	        /*
		 * this is a negative cache entry (vp == NULL)
		 * stick it on the negative cache list.
		 */
	        FUNC6(&neghead, ncp, nc_un.nc_negentry);
	  
		ncs_negtotal++;

		if (ncs_negtotal > desiredNegNodes) {
		       /*
			* if we've reached our desired limit
			* of negative cache entries, delete
			* the oldest
			*/
		        negp = FUNC4(&neghead);
			FUNC10(negp, 1);
		}
	}
	/*
	 * add us to the list of name cache entries that
	 * are children of dvp
	 */
	if (vp)
		FUNC6(&dvp->v_ncchildren, ncp, nc_child);
	else
		FUNC5(&dvp->v_ncchildren, ncp, nc_child);
}