#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct flipc_port {int dummy; } ;
typedef  int /*<<< orphan*/  mnl_obj_t ;
typedef  int /*<<< orphan*/  mnl_name_t ;
typedef  scalar_t__ mach_node_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_3__* ipc_port_t ;
typedef  TYPE_4__* flipc_port_t ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_3__* lport; int /*<<< orphan*/  state; scalar_t__ hostnode; TYPE_1__ obj; } ;
struct TYPE_13__ {TYPE_4__* imq_fport; } ;
struct TYPE_14__ {TYPE_2__ ip_messages; } ;

/* Variables and functions */
 TYPE_4__* FPORT_NULL ; 
 int /*<<< orphan*/  FPORT_STATE_PRINCIPAL ; 
 int /*<<< orphan*/  FPORT_STATE_PROXY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_3__* IP_NULL ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  flipc_port_zone ; 
 scalar_t__ localnode ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static kern_return_t
FUNC9(ipc_port_t lport, mach_node_t node, mnl_name_t name)
{
    /* Ensure parameters are valid and not already linked */
    FUNC4(FUNC1(lport));
    FUNC4(FUNC2(node));
    FUNC4(FUNC3(name));
    FUNC4(!FUNC0(lport->ip_messages.imq_fport));

    /* Allocate and initialize a flipc port */
    flipc_port_t fport = (flipc_port_t) FUNC7(flipc_port_zone);
    if (!FUNC0(fport))
        return KERN_RESOURCE_SHORTAGE;
    FUNC5(fport, sizeof(struct flipc_port));
    fport->obj.name = name;
    fport->hostnode = node;
    if (node == localnode)
        fport->state = FPORT_STATE_PRINCIPAL;
    else
        fport->state = FPORT_STATE_PROXY;

    /* Link co-structures (lport is locked) */
    fport->lport = lport;
    lport->ip_messages.imq_fport = fport;

    /* Add fport to the name hash table; revert link if insert fails */
    kern_return_t kr =  FUNC6((mnl_obj_t)fport);
    if (kr != KERN_SUCCESS) {
        lport->ip_messages.imq_fport = FPORT_NULL;
        fport->lport = IP_NULL;
        FUNC8(flipc_port_zone, fport);
    }

    return kr;
}