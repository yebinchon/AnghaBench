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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 scalar_t__ NECP_POLICY_CONDITION_REAL_APPLICATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC1(u_int8_t *buffer, u_int32_t length)
{
	return (FUNC0(buffer, length) == NECP_POLICY_CONDITION_REAL_APPLICATION);
}