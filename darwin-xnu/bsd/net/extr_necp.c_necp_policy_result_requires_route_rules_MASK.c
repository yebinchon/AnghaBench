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
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ NECP_POLICY_RESULT_ROUTE_RULES ; 
 int TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(u_int8_t *buffer, u_int32_t length)
{
	u_int8_t type = FUNC0(buffer, length);
	if (type == NECP_POLICY_RESULT_ROUTE_RULES) {
		return (TRUE);
	}
	return (FALSE);
}