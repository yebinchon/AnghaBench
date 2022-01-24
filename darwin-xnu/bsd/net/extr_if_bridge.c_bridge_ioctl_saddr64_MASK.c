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
struct ifbareq64 {int /*<<< orphan*/  ifba_flags; int /*<<< orphan*/  ifba_vlan; int /*<<< orphan*/  ifba_dst; int /*<<< orphan*/  ifba_ifsname; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 struct bridge_iflist* FUNC1 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bridge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bridge_iflist*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bridge_softc *sc, void *arg)
{
	struct ifbareq64 *req = arg;
	struct bridge_iflist *bif;
	int error;

	if (!FUNC0(sc)) {
		return (0);
	}

	bif = FUNC1(sc, req->ifba_ifsname);
	if (bif == NULL)
		return (ENOENT);

	error = FUNC2(sc, req->ifba_dst, req->ifba_vlan, bif, 1,
	    req->ifba_flags);

	return (error);
}