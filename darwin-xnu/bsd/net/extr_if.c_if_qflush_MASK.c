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
struct ifclassq {int dummy; } ;
struct ifnet {struct ifclassq if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 scalar_t__ FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct ifnet *ifp, int ifq_locked)
{
	struct ifclassq *ifq = &ifp->if_snd;

	if (!ifq_locked)
		FUNC2(ifq);

	if (FUNC1(ifq))
		FUNC3(ifq);

	FUNC5(FUNC0(ifq));

	if (!ifq_locked)
		FUNC4(ifq);
}