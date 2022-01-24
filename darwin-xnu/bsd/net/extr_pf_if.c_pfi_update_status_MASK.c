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
struct pfi_kif_cmp {int /*<<< orphan*/  pfik_name; } ;
struct pfi_kif {int /*<<< orphan*/  pfik_tzero; scalar_t__*** pfik_bytes; scalar_t__*** pfik_packets; } ;
struct pf_status {scalar_t__*** bcounters; scalar_t__*** pcounters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct pfi_kif* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__***,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  pfi_ifs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC5(const char *name, struct pf_status *pfs)
{
	struct pfi_kif		*p;
	struct pfi_kif_cmp	 key;
	int			 i, j, k;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC4(key.pfik_name, name, sizeof (key.pfik_name));
	p = FUNC1(pfi_ifhead, &pfi_ifs, (struct pfi_kif *)(void *)&key);
	if (p == NULL)
		return;

	if (pfs != NULL) {
		FUNC2(pfs->pcounters, sizeof (pfs->pcounters));
		FUNC2(pfs->bcounters, sizeof (pfs->bcounters));
		for (i = 0; i < 2; i++)
			for (j = 0; j < 2; j++)
				for (k = 0; k < 2; k++) {
					pfs->pcounters[i][j][k] +=
						p->pfik_packets[i][j][k];
					pfs->bcounters[i][j] +=
						p->pfik_bytes[i][j][k];
				}
	} else {
		/* just clear statistics */
		FUNC2(p->pfik_packets, sizeof (p->pfik_packets));
		FUNC2(p->pfik_bytes, sizeof (p->pfik_bytes));
		p->pfik_tzero = FUNC3();
	}
}