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
struct ifnet {struct bridge_softc* if_softc; } ;
struct bridge_softc {int /*<<< orphan*/  sc_stp; int /*<<< orphan*/  sc_aging_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  IFBF_FLUSHDYN ; 
 int IFF_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp, int disable)
{
#pragma unused(disable)
	struct bridge_softc *sc = ifp->if_softc;

	FUNC0(sc);

	if ((FUNC5(ifp) & IFF_RUNNING) == 0)
		return;

	if (FUNC2(sc)) {
		FUNC1(&sc->sc_aging_timer);

#if BRIDGESTP
		bstp_stop(&sc->sc_stp);
#endif /* BRIDGESTP */

		FUNC3(sc, IFBF_FLUSHDYN);
	}
	(void) FUNC6(ifp, 0, IFF_RUNNING);
}