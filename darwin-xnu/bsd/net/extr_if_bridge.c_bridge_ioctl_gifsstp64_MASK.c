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
struct ifbpstpconf64 {int dummy; } ;
struct bridge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_IOCTL_GIFSSTP ; 
 scalar_t__ FUNC0 (struct bridge_softc*) ; 

__attribute__((used)) static int
FUNC1(struct bridge_softc *sc, void *arg)
{
	struct ifbpstpconf64 *bifstp = arg;
	int error = 0;

	if (FUNC0(sc)) {
		BRIDGE_IOCTL_GIFSSTP;
	}
	return (error);
}