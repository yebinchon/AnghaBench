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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_BOND ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct ifnet*) ; 
 int FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
    int         error;

    error = FUNC0(ifp, PF_BOND);
    if (error) {
	FUNC3("bond over %s%d: ifnet_detach_protocol failed, %d\n",
	       FUNC1(ifp), FUNC2(ifp), error);
    }
    return (error);
}