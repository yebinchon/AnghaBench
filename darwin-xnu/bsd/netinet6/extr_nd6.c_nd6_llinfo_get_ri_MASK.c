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
struct rtentry {struct llinfo_nd6* rt_llinfo; } ;
struct rt_reach_info {int /*<<< orphan*/  ri_snd_expire; int /*<<< orphan*/  ri_npm; int /*<<< orphan*/  ri_lqm; int /*<<< orphan*/  ri_rssi; } ;
struct llinfo_nd6 {int /*<<< orphan*/  ln_lastused; struct if_llreach* ln_llreach; } ;
struct if_llreach {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_llreach*) ; 
 int /*<<< orphan*/  IFNET_LQM_THRESH_OFF ; 
 int /*<<< orphan*/  IFNET_NPM_THRESH_UNKNOWN ; 
 int /*<<< orphan*/  IFNET_RSSI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (struct rt_reach_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct if_llreach*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct if_llreach*,struct rt_reach_info*) ; 

__attribute__((used)) static void
FUNC5(struct rtentry *rt, struct rt_reach_info *ri)
{
	struct llinfo_nd6 *ln = rt->rt_llinfo;
	struct if_llreach *lr = ln->ln_llreach;

	if (lr == NULL) {
		FUNC2(ri, sizeof (*ri));
		ri->ri_rssi = IFNET_RSSI_UNKNOWN;
		ri->ri_lqm = IFNET_LQM_THRESH_OFF;
		ri->ri_npm = IFNET_NPM_THRESH_UNKNOWN;
	} else {
		FUNC0(lr);
		/* Export to rt_reach_info structure */
		FUNC4(lr, ri);
		/* Export ND6 send expiration (calendar) time */
		ri->ri_snd_expire =
		    FUNC3(lr, ln->ln_lastused);
		FUNC1(lr);
	}
}