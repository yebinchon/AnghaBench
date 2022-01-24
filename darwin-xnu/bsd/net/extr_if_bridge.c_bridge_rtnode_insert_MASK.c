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
struct bridge_softc {int /*<<< orphan*/  sc_brtcnt; int /*<<< orphan*/  sc_rtlist; } ;
struct bridge_rtnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bridge_rtnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*) ; 
 int FUNC2 (struct bridge_softc*,struct bridge_rtnode*) ; 
 int /*<<< orphan*/  brt_list ; 

__attribute__((used)) static int
FUNC3(struct bridge_softc *sc, struct bridge_rtnode *brt)
{
	int error;

	error = FUNC2(sc, brt);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_rtlist, brt, brt_list);
	sc->sc_brtcnt++;

	FUNC1(sc);

	return (0);
}