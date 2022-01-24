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
struct ipf_filter {int dummy; } ;
typedef  int /*<<< orphan*/  ipfilter_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipf_filter const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ipv4_filters ; 

errno_t
FUNC1(
	const struct ipf_filter *filter,
	ipfilter_t *filter_ref)
{
	return (FUNC0(filter, filter_ref, &ipv4_filters, false));
}