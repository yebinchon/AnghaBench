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
struct pflog_softc {int sc_flags; } ;
struct ifnet {struct pflog_softc* if_softc; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFPFLF_DETACHING ; 
 int /*<<< orphan*/  FUNC0 (struct pflog_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pf_perim_lock ; 
 int /*<<< orphan*/  sc_list ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp)
{
	int error = 0;
	struct pflog_softc *pflogif = NULL;

	FUNC4(pf_perim_lock);
	FUNC1(pf_lock);
	pflogif = ifp->if_softc;

	if (pflogif == NULL ||
	    (pflogif->sc_flags & IFPFLF_DETACHING) != 0) {
		error = EINVAL;
		goto done;
	}

	pflogif->sc_flags |= IFPFLF_DETACHING;
	FUNC0(pflogif, sc_list);
done:
	FUNC2(pf_lock);
	FUNC3(pf_perim_lock);
	return error;
}