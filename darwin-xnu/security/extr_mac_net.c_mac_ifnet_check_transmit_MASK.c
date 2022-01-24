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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,struct mbuf*,struct label*,int,int) ; 
 int /*<<< orphan*/  ifnet_check_transmit ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 struct label* FUNC3 (struct mbuf*) ; 

int
FUNC4(struct ifnet *ifp, struct mbuf *mbuf, int family,
    int type)
{
	struct label *label;
	int error;

	label = FUNC3(mbuf);

	FUNC2(ifp);
	FUNC0(ifnet_check_transmit, ifp, ifp->if_label, mbuf, label,
	    family, type);
	FUNC1(ifp);

	return (error);
}