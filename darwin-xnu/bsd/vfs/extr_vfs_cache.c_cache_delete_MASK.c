#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * le_prev; } ;
struct namecache {int /*<<< orphan*/ * nc_name; TYPE_2__ nc_hash; TYPE_1__* nc_dvp; scalar_t__ nc_vp; } ;
struct TYPE_6__ {int /*<<< orphan*/  nc_negentry; int /*<<< orphan*/  nc_link; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_ncchildren; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct namecache*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CACHE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_child ; 
 int /*<<< orphan*/  nc_entry ; 
 int /*<<< orphan*/  nc_hash ; 
 TYPE_3__ nc_un ; 
 int /*<<< orphan*/  nchead ; 
 int /*<<< orphan*/  ncs_deletes ; 
 int /*<<< orphan*/  ncs_negtotal ; 
 int /*<<< orphan*/  neghead ; 
 int /*<<< orphan*/  numcache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct namecache *ncp, int free_entry)
{
        FUNC2(ncs_deletes);

        if (ncp->nc_vp) {
	        FUNC1(ncp, nc_un.nc_link);
	} else {
	        FUNC3(&neghead, ncp, nc_un.nc_negentry);
	        ncs_negtotal--;
	}
        FUNC3(&(ncp->nc_dvp->v_ncchildren), ncp, nc_child);

	FUNC1(ncp, nc_hash);
	/*
	 * this field is used to indicate
	 * that the entry is in use and
	 * must be deleted before it can 
	 * be reused...
	 */
	ncp->nc_hash.le_prev = NULL;

	FUNC4(ncp->nc_name);
	ncp->nc_name = NULL;
	if (free_entry) {
	        FUNC3(&nchead, ncp, nc_entry);
		FUNC0(ncp, sizeof(*ncp), M_CACHE);
		numcache--;
	}
}