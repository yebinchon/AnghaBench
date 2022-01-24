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
struct ifnet {struct gif_softc* if_softc; } ;
struct gif_softc {int gif_flags; int /*<<< orphan*/ * encap_cookie4; int /*<<< orphan*/ * encap_cookie6; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct gif_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gif_softc*) ; 
 int IFGIF_DETACHING ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gif_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gif_softc*) ; 
 int /*<<< orphan*/  gif_link ; 
 int /*<<< orphan*/  gif_mtx ; 
 int /*<<< orphan*/  gifs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngif ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp)
{
	int error = 0;
	struct gif_softc *sc = NULL;

	FUNC6(gif_mtx);
	sc = ifp->if_softc;

	if (sc == NULL) {
		error = EINVAL;
		goto done;
	}

	FUNC0(sc);
	if (sc->gif_flags & IFGIF_DETACHING) {
		error = EINVAL;
		goto done;
	}

	sc->gif_flags |= IFGIF_DETACHING;
	FUNC3(&gifs, sc, gif_link);
	ngif--;

	FUNC5(sc);
#ifdef INET6
	if (sc->encap_cookie6 != NULL) {
		error = encap_detach(sc->encap_cookie6);
		KASSERT(error == 0, ("gif_clone_destroy: Unexpected "
		    "error detaching encap_cookie6"));
	}
#endif
#ifdef INET
	if (sc->encap_cookie4 != NULL) {
		error = encap_detach(sc->encap_cookie4);
		KASSERT(error == 0, ("gif_clone_destroy: Unexpected "
		    "error detaching encap_cookie4"));
	}
#endif
done:
	if (sc != NULL)
		FUNC1(sc);
	FUNC7(gif_mtx);

	return (error);
}