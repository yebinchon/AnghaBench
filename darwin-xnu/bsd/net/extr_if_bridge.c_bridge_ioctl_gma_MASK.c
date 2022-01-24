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
struct ifbrparam {int ifbrp_maxage; } ;
struct bstp_state {int bs_bridge_max_age; } ;
struct bridge_softc {struct bstp_state sc_stp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 

__attribute__((used)) static int
FUNC1(struct bridge_softc *sc, void *arg)
{
	struct ifbrparam *param;
	struct bstp_state *bs;

	if (!FUNC0(sc)) {
		return (EOPNOTSUPP);
	}
	param = arg;
	bs = &sc->sc_stp;
	param->ifbrp_maxage = bs->bs_bridge_max_age >> 8;
	return (0);
}