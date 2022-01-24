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
struct gif_softc {scalar_t__ gif_proto; } ;
typedef  scalar_t__ protocol_family_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gif_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gif_softc*) ; 
 struct gif_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC3(
	ifnet_t ifp,
	protocol_family_t protocol_family)
{
	struct gif_softc *sc = FUNC2(ifp);

	FUNC0(sc);
	if (sc->gif_proto == protocol_family)
		sc->gif_proto = 0;
	FUNC1(sc);

	return (0);
}