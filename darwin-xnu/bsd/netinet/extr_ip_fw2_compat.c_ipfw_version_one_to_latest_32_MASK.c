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
struct sockopt {int dummy; } ;
struct ip_fw_compat_32 {int dummy; } ;
struct ip_fw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sockopt*,struct ip_fw*,struct ip_fw_compat_32*) ; 

__attribute__((used)) static int
FUNC1(struct sockopt *sopt, struct ip_fw *curr_rule, struct ip_fw_compat_32 *rule_vers1)
{
	int err;
	
	/* if rule_vers1 is not null then this is coming from
	 * ipfw_version_zero_to_latest(), so pass that along;
	 * otherwise let ipfw_version_one_to_version_two()
	 * get the rule from sopt.
	 */
	err = FUNC0(sopt, curr_rule, rule_vers1);
	
	return err;
}