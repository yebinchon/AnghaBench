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
struct pfr_ktable {scalar_t__ pfrkt_larg; } ;
struct pfi_kif {int dummy; } ;
struct pfi_dynaddr {int /*<<< orphan*/  pfid_iflags; int /*<<< orphan*/  pfid_net; struct pfr_ktable* pfid_kt; struct pfi_kif* pfid_kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_ktable*,struct pfi_kif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pfi_update ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_ktable*,struct pfi_dynaddr*) ; 

void
FUNC3(struct pfi_dynaddr *dyn)
{
	struct pfi_kif		*kif;
	struct pfr_ktable	*kt;

	if (dyn == NULL || dyn->pfid_kif == NULL || dyn->pfid_kt == NULL)
		FUNC0("pfi_dynaddr_update");

	kif = dyn->pfid_kif;
	kt = dyn->pfid_kt;

	if (kt->pfrkt_larg != pfi_update) {
		/* this table needs to be brought up-to-date */
		FUNC1(kt, kif, dyn->pfid_net, dyn->pfid_iflags);
		kt->pfrkt_larg = pfi_update;
	}
	FUNC2(kt, dyn);
}