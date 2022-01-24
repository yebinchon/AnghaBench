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
struct ifaddr {int dummy; } ;
struct dadq {int dad_attached; scalar_t__ dad_lladdrlen; scalar_t__ dad_loopbackprobe; scalar_t__ dad_ns_lcount; scalar_t__ dad_ns_tcount; scalar_t__ dad_ns_ocount; scalar_t__ dad_na_icount; scalar_t__ dad_ns_icount; int /*<<< orphan*/  dad_count; struct ifaddr* dad_ifa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dadq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  dad6_mutex ; 
 int /*<<< orphan*/  dad_list ; 
 int /*<<< orphan*/  dadq ; 
 int /*<<< orphan*/  ip6_dad_count ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dadq *
FUNC8(struct dadq *dp, struct ifaddr *ifa)
{
	FUNC6(dad6_mutex);
	FUNC1(dp);
	dp->dad_ifa = ifa;
	FUNC3(ifa);	/* for dad_ifa */
	dp->dad_count = ip6_dad_count;
	dp->dad_ns_icount = dp->dad_na_icount = 0;
	dp->dad_ns_ocount = dp->dad_ns_tcount = 0;
	dp->dad_ns_lcount = dp->dad_loopbackprobe = 0;
	FUNC5(!dp->dad_attached);
	dp->dad_attached = 1;
	dp->dad_lladdrlen = 0;
	FUNC0(dp);	/* for caller */
	FUNC0(dp);	/* for dadq_head list */
	FUNC4(&dadq, (struct dadq *)dp, dad_list);
	FUNC2(dp);
	FUNC7(dad6_mutex);

	return (dp);
}