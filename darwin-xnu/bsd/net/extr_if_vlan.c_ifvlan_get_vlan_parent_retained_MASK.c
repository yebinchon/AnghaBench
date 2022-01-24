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
typedef  int /*<<< orphan*/ * vlan_parent_ref ;
typedef  TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {int /*<<< orphan*/ * ifv_vlp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlan_parent_ref
FUNC2(ifvlan_ref ifv)
{
    vlan_parent_ref	vlp = ifv->ifv_vlp;

    if (vlp == NULL || FUNC0(vlp)) {
	return (NULL);
    }
    FUNC1(vlp);
    return (vlp);
}