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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct bridge_softc {int dummy; } ;
struct bridge_rtnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*,struct bridge_rtnode*) ; 
 struct bridge_rtnode* FUNC2 (struct bridge_softc*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bridge_softc *sc, const uint8_t *addr, uint16_t vlan)
{
	struct bridge_rtnode *brt;
	int found = 0;

	FUNC0(sc);

	/*
	 * If vlan is zero then we want to delete for all vlans so the lookup
	 * may return more than one.
	 */
	while ((brt = FUNC2(sc, addr, vlan)) != NULL) {
		FUNC1(sc, brt);
		found = 1;
	}

	return (found ? 0 : ENOENT);
}