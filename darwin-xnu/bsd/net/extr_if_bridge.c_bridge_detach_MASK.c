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
struct bridge_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_stp; } ;
typedef  int /*<<< orphan*/  ifnet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bridge_cloner ; 
 scalar_t__ FUNC1 (struct bridge_softc*) ; 
 int /*<<< orphan*/  bridge_list_mtx ; 
 int /*<<< orphan*/  bridge_lock_grp ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc_list ; 

__attribute__((used)) static void
FUNC10(ifnet_t ifp)
{
	struct bridge_softc *sc = (struct bridge_softc *)FUNC6(ifp);

#if BRIDGESTP
	bstp_detach(&sc->sc_stp);
#endif /* BRIDGESTP */

	if (FUNC1(sc)) {
		/* Tear down the routing table. */
		FUNC2(sc);
	}

	FUNC8(&bridge_list_mtx);
	FUNC0(sc, sc_list);
	FUNC9(&bridge_list_mtx);

	FUNC5(ifp);

	FUNC7(&sc->sc_mtx, bridge_lock_grp);
	FUNC4(&bridge_cloner, sc);
}