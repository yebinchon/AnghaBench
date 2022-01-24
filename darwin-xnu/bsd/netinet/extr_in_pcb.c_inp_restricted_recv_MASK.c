#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inpcb {int dummy; } ;
struct ifnet {char* if_xname; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int p_pid; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (struct inpcb*,struct ifnet*) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ log_restricted ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 char* FUNC3 (TYPE_1__*) ; 

boolean_t
FUNC4(struct inpcb *inp, struct ifnet *ifp)
{
	boolean_t ret;

	ret = FUNC0(inp, ifp);
	if (ret == TRUE && log_restricted) {
		FUNC2("pid %d (%s) is unable to receive packets on %s\n",
		    FUNC1()->p_pid, FUNC3(FUNC1()),
		    ifp->if_xname);
	}
	return (ret);
}