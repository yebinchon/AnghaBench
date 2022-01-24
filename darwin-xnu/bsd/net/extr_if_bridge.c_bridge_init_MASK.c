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
struct ifnet {scalar_t__ if_softc; } ;
struct bridge_softc {int /*<<< orphan*/  sc_stp; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int IFF_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*) ; 
 scalar_t__ FUNC2 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ifnet*) ; 
 scalar_t__ FUNC5 (struct ifnet*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct bridge_softc *sc = (struct bridge_softc *)ifp->if_softc;
	errno_t error;

	FUNC0(sc);

	if ((FUNC4(ifp) & IFF_RUNNING))
		return (0);

	error = FUNC5(ifp, IFF_RUNNING, IFF_RUNNING);

	if (FUNC2(sc)) {
		/*
		 * Calling bridge_aging_timer() is OK as there are no entries to
		 * age so we're just going to arm the timer
		 */
		FUNC1(sc);
#if BRIDGESTP
		if (error == 0)
			bstp_init(&sc->sc_stp);	/* Initialize Spanning Tree */
#endif /* BRIDGESTP */
	}
	return (error);
}