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
typedef  int /*<<< orphan*/ * ifvlan_ref ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ifvlan_ref
FUNC3(struct ifnet * ifp)
{
    ifvlan_ref		ifv;

    ifv = FUNC0(ifp);
    if (ifv == NULL) {
	return (NULL);
    }
    if (FUNC1(ifv)) {
	return (NULL);
    }
    FUNC2(ifv);
    return (ifv);
}