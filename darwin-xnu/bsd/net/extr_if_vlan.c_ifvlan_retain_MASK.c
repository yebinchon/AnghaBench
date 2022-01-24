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
typedef  TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {scalar_t__ ifv_signature; scalar_t__ ifv_retain_count; } ;

/* Variables and functions */
 scalar_t__ IFV_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(ifvlan_ref ifv)
{
    if (ifv->ifv_signature != IFV_SIGNATURE) {
	FUNC1("ifvlan_retain: bad signature\n");
    }
    if (ifv->ifv_retain_count == 0) {
	FUNC1("ifvlan_retain: retain count is 0\n");
    }
    FUNC0(&ifv->ifv_retain_count);
}