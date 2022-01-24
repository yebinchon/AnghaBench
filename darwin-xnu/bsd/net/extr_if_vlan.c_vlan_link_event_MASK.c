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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifnet {int dummy; } ;
struct ifmediareq {scalar_t__ ifm_count; int ifm_status; int /*<<< orphan*/  ifm_name; } ;
typedef  int /*<<< orphan*/  ifmr ;

/* Variables and functions */
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int /*<<< orphan*/  KEV_DL_LINK_OFF ; 
 int /*<<< orphan*/  KEV_DL_LINK_ON ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (struct ifmediareq*,int) ; 
 scalar_t__ FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifmediareq*) ; 
 char* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ifnet * ifp, struct ifnet * p)
{
    struct ifmediareq ifmr;

    /* generate a link event based on the state of the underlying interface */
    FUNC0(&ifmr, sizeof(ifmr));
    FUNC5(ifmr.ifm_name, sizeof(ifmr.ifm_name),
	     "%s%d", FUNC2(p), FUNC3(p));
    if (FUNC1(p, 0, SIOCGIFMEDIA, &ifmr) == 0
	&& ifmr.ifm_count > 0 && ifmr.ifm_status & IFM_AVALID) {
	u_int32_t	event;
	
	event = (ifmr.ifm_status & IFM_ACTIVE)
	    ? KEV_DL_LINK_ON : KEV_DL_LINK_OFF;
	FUNC4(ifp, event);
    }
    return;
}