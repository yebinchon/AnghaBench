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
struct pfi_kif {int /*<<< orphan*/  pfik_dynaddrs; int /*<<< orphan*/  pfik_tzero; int /*<<< orphan*/  pfik_name; } ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PFI_MTYPE ; 
 struct pfi_kif* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pfi_kif* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pfi_kif_cmp*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  pfi_ifs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

struct pfi_kif *
FUNC7(const char *kif_name)
{
	struct pfi_kif		*kif;
	struct pfi_kif_cmp	 s;

	FUNC4(&s, sizeof (s));
	FUNC6(s.pfik_name, kif_name, sizeof (s.pfik_name));
	if ((kif = FUNC0(pfi_ifhead, &pfi_ifs,
	    (struct pfi_kif *)(void *)&s)) != NULL)
		return (kif);

	/* create new one */
	if ((kif = FUNC3(sizeof (*kif), PFI_MTYPE, M_WAITOK|M_ZERO)) == NULL)
		return (NULL);

	FUNC6(kif->pfik_name, kif_name, sizeof (kif->pfik_name));
	kif->pfik_tzero = FUNC5();
	FUNC2(&kif->pfik_dynaddrs);

	FUNC1(pfi_ifhead, &pfi_ifs, kif);
	return (kif);
}