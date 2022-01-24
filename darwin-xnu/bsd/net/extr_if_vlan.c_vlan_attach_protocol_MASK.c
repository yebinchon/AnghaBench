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
struct ifnet_attach_proto_param {int /*<<< orphan*/  detached; int /*<<< orphan*/  event; int /*<<< orphan*/  input; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  PF_VLAN ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet_attach_proto_param*,int) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ ,struct ifnet_attach_proto_param*) ; 
 char* FUNC2 (struct ifnet*) ; 
 int FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int /*<<< orphan*/  vlan_detached ; 
 int /*<<< orphan*/  vlan_event ; 
 int /*<<< orphan*/  vlan_input ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp)
{
    int								error;
    struct ifnet_attach_proto_param	reg;
	
    FUNC0(&reg, sizeof(reg));
    reg.input            = vlan_input;
    reg.event            = vlan_event;
    reg.detached         = vlan_detached;
    error = FUNC1(ifp, PF_VLAN, &reg);
    if (error) {
	FUNC4("vlan_proto_attach(%s%d) ifnet_attach_protocol failed, %d\n",
	       FUNC2(ifp), FUNC3(ifp), error);
    }
    return (error);
}