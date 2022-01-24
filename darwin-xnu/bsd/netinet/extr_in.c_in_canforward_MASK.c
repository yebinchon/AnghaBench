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
typedef  int u_int32_t ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int IN_CLASSA_NET ; 
 int IN_CLASSA_NSHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 int IN_LOOPBACKNET ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC4(struct in_addr in)
{
	u_int32_t i = FUNC3(in.s_addr);
	u_int32_t net;

	if (FUNC1(i) || FUNC2(i))
		return (FALSE);
	if (FUNC0(i)) {
		net = i & IN_CLASSA_NET;
		if (net == 0 || net == (IN_LOOPBACKNET << IN_CLASSA_NSHIFT))
			return (FALSE);
	}
	return (TRUE);
}