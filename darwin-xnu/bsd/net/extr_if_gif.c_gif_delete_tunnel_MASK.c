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
struct gif_softc {int /*<<< orphan*/  gif_ro; int /*<<< orphan*/ * gif_pdst; int /*<<< orphan*/ * gif_psrc; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gif_softc*) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct gif_softc *sc)
{
	FUNC1(sc);
	if (sc->gif_psrc) {
		FUNC0((caddr_t)sc->gif_psrc, M_IFADDR);
		sc->gif_psrc = NULL;
	}
	if (sc->gif_pdst) {
		FUNC0((caddr_t)sc->gif_pdst, M_IFADDR);
		sc->gif_pdst = NULL;
	}
	FUNC2(&sc->gif_ro);
	/* change the IFF_UP flag as well? */
}