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
struct pfr_ktable {char* pfrkt_name; int /*<<< orphan*/  pfrkt_t; } ;
struct pfi_kif {int /*<<< orphan*/ * pfik_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFR_TFLAG_ALLMASK ; 
 int /*<<< orphan*/  pfi_buffer ; 
 int pfi_buffer_cnt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

void
FUNC4(struct pfr_ktable *kt, struct pfi_kif *kif, int net, int flags)
{
	int			 e, size2 = 0;

	pfi_buffer_cnt = 0;

	if (kif->pfik_ifp != NULL)
		FUNC1(kif->pfik_ifp, net, flags);

	if ((e = FUNC2(&kt->pfrkt_t, FUNC0(pfi_buffer),
	    pfi_buffer_cnt, &size2, NULL, NULL, NULL, 0, PFR_TFLAG_ALLMASK)))
		FUNC3("pfi_table_update: cannot set %d new addresses "
		    "into table %s: %d\n", pfi_buffer_cnt, kt->pfrkt_name, e);
}