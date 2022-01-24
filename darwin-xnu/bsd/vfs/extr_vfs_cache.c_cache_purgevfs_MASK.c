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
struct nchashhead {struct namecache* lh_first; } ;
struct TYPE_3__ {struct namecache* le_next; } ;
struct namecache {TYPE_2__* nc_dvp; TYPE_1__ nc_hash; } ;
struct mount {int dummy; } ;
struct TYPE_4__ {struct mount* v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct namecache*,int /*<<< orphan*/ ) ; 
 int nchash ; 
 struct nchashhead* nchashtbl ; 

void
FUNC3(struct mount *mp)
{
	struct nchashhead *ncpp;
	struct namecache *ncp;

	FUNC0();
	/* Scan hash tables for applicable entries */
	for (ncpp = &nchashtbl[nchash - 1]; ncpp >= nchashtbl; ncpp--) {
restart:	  
		for (ncp = ncpp->lh_first; ncp != 0; ncp = ncp->nc_hash.le_next) {
			if (ncp->nc_dvp->v_mount == mp) {
				FUNC2(ncp, 0);
				goto restart;
			}
		}
	}
	FUNC1();
}