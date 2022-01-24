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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NC_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_CACHE ; 
 int NUM_STRCACHE_LOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int desiredNegNodes ; 
 int desiredNodes ; 
 int desiredvnodes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namecache_lck_attr ; 
 int /*<<< orphan*/  namecache_lck_grp ; 
 int /*<<< orphan*/  namecache_lck_grp_attr ; 
 void* namecache_rw_lock ; 
 int /*<<< orphan*/  nchash ; 
 int /*<<< orphan*/  nchashmask ; 
 int /*<<< orphan*/  nchashtbl ; 
 int /*<<< orphan*/  nchead ; 
 int /*<<< orphan*/  neghead ; 
 int /*<<< orphan*/  strcache_lck_attr ; 
 int /*<<< orphan*/  strcache_lck_grp ; 
 int /*<<< orphan*/  strcache_lck_grp_attr ; 
 int /*<<< orphan*/ * strcache_mtx_locks ; 
 void* strtable_rw_lock ; 

void
FUNC10(void)
{
	int	i;

	desiredNegNodes = (desiredvnodes / 10);
	desiredNodes = desiredvnodes + desiredNegNodes;

	FUNC1(&nchead);
	FUNC1(&neghead);

	FUNC3();

	nchashtbl = FUNC2(FUNC0(CONFIG_NC_HASH, (2 *desiredNodes)), M_CACHE, &nchash);
	nchashmask = nchash;
	nchash++;

	FUNC4();
	
	/* Allocate name cache lock group attribute and group */
	namecache_lck_grp_attr= FUNC7();

	namecache_lck_grp = FUNC6("Name Cache",  namecache_lck_grp_attr);
	
	/* Allocate name cache lock attribute */
	namecache_lck_attr = FUNC5();

	/* Allocate name cache lock */
	namecache_rw_lock = FUNC9(namecache_lck_grp, namecache_lck_attr);


	/* Allocate string cache lock group attribute and group */
	strcache_lck_grp_attr= FUNC7();

	strcache_lck_grp = FUNC6("String Cache",  strcache_lck_grp_attr);
	
	/* Allocate string cache lock attribute */
	strcache_lck_attr = FUNC5();

	/* Allocate string cache lock */
	strtable_rw_lock = FUNC9(strcache_lck_grp, strcache_lck_attr);

	for (i = 0; i < NUM_STRCACHE_LOCKS; i++)
		FUNC8(&strcache_mtx_locks[i], strcache_lck_grp, strcache_lck_attr);
}