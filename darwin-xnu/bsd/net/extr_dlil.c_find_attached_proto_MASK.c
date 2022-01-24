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
typedef  size_t u_int32_t ;
struct ifnet {int /*<<< orphan*/ * if_proto_hash; } ;
struct if_proto {size_t protocol_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNET_LCK_ASSERT_OWNED ; 
 struct if_proto* FUNC0 (int /*<<< orphan*/ *) ; 
 struct if_proto* FUNC1 (struct if_proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_hash ; 
 size_t FUNC4 (size_t) ; 

__attribute__((used)) static struct if_proto *
FUNC5(struct ifnet *ifp, u_int32_t protocol_family)
{
	struct if_proto *proto = NULL;
	u_int32_t i = FUNC4(protocol_family);

	FUNC3(ifp, IFNET_LCK_ASSERT_OWNED);

	if (ifp->if_proto_hash != NULL)
		proto = FUNC0(&ifp->if_proto_hash[i]);

	while (proto != NULL && proto->protocol_family != protocol_family)
		proto = FUNC1(proto, next_hash);

	if (proto != NULL)
		FUNC2(proto);

	return (proto);
}