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
typedef  int user_addr_t ;
typedef  int /*<<< orphan*/  u ;
struct pfi_uif {int /*<<< orphan*/  pfik_rules; int /*<<< orphan*/  pfik_states; int /*<<< orphan*/  pfik_flags; scalar_t__ pfik_tzero; int /*<<< orphan*/  pfik_bytes; int /*<<< orphan*/  pfik_packets; int /*<<< orphan*/  pfik_name; } ;
struct pfi_kif {int /*<<< orphan*/  pfik_rules; int /*<<< orphan*/  pfik_states; int /*<<< orphan*/  pfik_flags; scalar_t__ pfik_tzero; int /*<<< orphan*/  pfik_bytes; int /*<<< orphan*/  pfik_packets; int /*<<< orphan*/  pfik_name; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PFI_KIF_REF_RULE ; 
 struct pfi_kif* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pfi_kif* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_uif*,int) ; 
 scalar_t__ FUNC5 (struct pfi_uif*,int,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  pfi_ifs ; 
 int /*<<< orphan*/  FUNC7 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,struct pfi_kif*) ; 

int
FUNC10(const char *name, user_addr_t buf, int *size)
{
	struct pfi_kif	 *p, *nextp;
	int		 n = 0;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	for (p = FUNC1(pfi_ifhead, &pfi_ifs); p; p = nextp) {
		nextp = FUNC2(pfi_ifhead, &pfi_ifs, p);
		if (FUNC9(name, p))
			continue;
		if (*size > n++) {
			struct pfi_uif u;

			if (!p->pfik_tzero)
				p->pfik_tzero = FUNC6();
			FUNC7(p, PFI_KIF_REF_RULE);

			/* return the user space version of pfi_kif */
			FUNC4(&u, sizeof (u));
			FUNC3(p->pfik_name, &u.pfik_name, sizeof (u.pfik_name));
			FUNC3(p->pfik_packets, &u.pfik_packets,
			    sizeof (u.pfik_packets));
			FUNC3(p->pfik_bytes, &u.pfik_bytes,
			    sizeof (u.pfik_bytes));
			u.pfik_tzero = p->pfik_tzero;
			u.pfik_flags = p->pfik_flags;
			u.pfik_states = p->pfik_states;
			u.pfik_rules = p->pfik_rules;

			if (FUNC5(&u, buf, sizeof (u))) {
				FUNC8(p, PFI_KIF_REF_RULE);
				return (EFAULT);
			}
			buf += sizeof (u);
			nextp = FUNC2(pfi_ifhead, &pfi_ifs, p);
			FUNC8(p, PFI_KIF_REF_RULE);
		}
	}
	*size = n;
	return (0);
}