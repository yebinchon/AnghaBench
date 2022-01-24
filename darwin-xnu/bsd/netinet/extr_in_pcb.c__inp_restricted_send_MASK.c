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
struct inpcb {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 scalar_t__ FUNC6 (struct inpcb*) ; 
 scalar_t__ FUNC7 (struct inpcb*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sorestrictsend ; 

__attribute__((used)) static boolean_t
FUNC9(struct inpcb *inp, struct ifnet *ifp)
{
	FUNC8(inp != NULL);

	/*
	 * Outbound restrictions.
	 */
	if (!sorestrictsend)
		return (FALSE);

	if (ifp == NULL)
		return (FALSE);

	if (FUNC1(ifp) && FUNC6(inp))
		return (TRUE);

	if (FUNC2(ifp) && FUNC7(inp))
		return (TRUE);

	if (FUNC0(ifp) && !FUNC4(inp))
		return (TRUE);

	if (FUNC3(ifp) && !FUNC5(inp))
		return (TRUE);

	return (FALSE);
}