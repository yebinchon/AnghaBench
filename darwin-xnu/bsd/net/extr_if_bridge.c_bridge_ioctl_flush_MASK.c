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
struct ifbreq {int /*<<< orphan*/  ifbr_ifsflags; } ;
struct bridge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bridge_softc *sc, void *arg)
{
	struct ifbreq *req = arg;

	if (!FUNC0(sc)) {
		return (0);
	}
	FUNC1(sc, req->ifbr_ifsflags);
	return (0);
}