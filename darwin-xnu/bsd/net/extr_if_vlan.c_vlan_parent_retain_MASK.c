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
typedef  TYPE_1__* vlan_parent_ref ;
struct TYPE_3__ {scalar_t__ vlp_signature; scalar_t__ vlp_retain_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ VLP_SIGNATURE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(vlan_parent_ref vlp)
{
    if (vlp->vlp_signature != VLP_SIGNATURE) {
	FUNC1("vlan_parent_retain: signature is bad\n");
    }
    if (vlp->vlp_retain_count == 0) {
	FUNC1("vlan_parent_retain: retain count is 0\n");
    }
    FUNC0(&vlp->vlp_retain_count);
}