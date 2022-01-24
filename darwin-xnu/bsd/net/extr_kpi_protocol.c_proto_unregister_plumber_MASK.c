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
struct proto_family_str {int dummy; } ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  int /*<<< orphan*/  ifnet_family_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proto_family_str*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proto_family_str*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_fam_next ; 
 int /*<<< orphan*/  proto_family_head ; 
 int /*<<< orphan*/  proto_family_mutex ; 
 struct proto_family_str* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(protocol_family_t protocol_family,
    ifnet_family_t interface_family)
{
	struct proto_family_str  *proto_family;

	FUNC2(proto_family_mutex);

	proto_family = FUNC4(protocol_family, interface_family);
	if (proto_family == NULL) {
		FUNC3(proto_family_mutex);
		return;
	}

	FUNC1(&proto_family_head, proto_family, proto_fam_next);
	FUNC0(proto_family, M_IFADDR);

	FUNC3(proto_family_mutex);
}