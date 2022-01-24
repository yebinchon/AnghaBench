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
struct ifnet_attach_proto_param_v2 {int /*<<< orphan*/  pre_output; int /*<<< orphan*/  input; } ;
struct ifnet {int dummy; } ;
typedef  int protocol_family_t ;
typedef  int /*<<< orphan*/  proto ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet_attach_proto_param_v2*,int) ; 
 scalar_t__ FUNC1 (struct ifnet*,int,struct ifnet_attach_proto_param_v2*) ; 
 int /*<<< orphan*/  lo_input ; 
 int /*<<< orphan*/  lo_pre_output ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__) ; 

__attribute__((used)) static errno_t
FUNC3(struct ifnet *ifp, protocol_family_t protocol_family)
{
	struct ifnet_attach_proto_param_v2	proto;
	errno_t							result = 0;

	FUNC0(&proto, sizeof (proto));
	proto.input = lo_input;
	proto.pre_output = lo_pre_output;

	result = FUNC1(ifp, protocol_family, &proto);

	if (result && result != EEXIST) {
		FUNC2("lo_attach_proto: ifnet_attach_protocol for %u "
		    "returned=%d\n", protocol_family, result);
	}

	return (result);
}