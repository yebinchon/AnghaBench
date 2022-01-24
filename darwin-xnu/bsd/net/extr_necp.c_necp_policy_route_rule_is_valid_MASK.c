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
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
#define  NECP_ROUTE_RULE_ALLOW_INTERFACE 131 
#define  NECP_ROUTE_RULE_DENY_INTERFACE 130 
#define  NECP_ROUTE_RULE_DENY_LQM_ABORT 129 
#define  NECP_ROUTE_RULE_QOS_MARKING 128 
 int TRUE ; 
 scalar_t__ necp_debug ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(u_int8_t *buffer, u_int32_t length)
{
	bool validated = FALSE;
	u_int8_t type = FUNC1(buffer, length);
	switch (type) {
		case NECP_ROUTE_RULE_ALLOW_INTERFACE: {
			validated = TRUE;
			break;
		}
		case NECP_ROUTE_RULE_DENY_INTERFACE: {
			validated = TRUE;
			break;
		}
		case NECP_ROUTE_RULE_QOS_MARKING: {
			validated = TRUE;
			break;
		}
		case NECP_ROUTE_RULE_DENY_LQM_ABORT: {
			validated = TRUE;
			break;
		}
		default: {
			validated = FALSE;
			break;
		}
	}

	if (necp_debug) {
		FUNC0(LOG_DEBUG, "Policy route rule type %d, valid %d", type, validated);
	}

	return (validated);
}