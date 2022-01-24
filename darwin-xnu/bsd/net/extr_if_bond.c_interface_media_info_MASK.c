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
struct media_info {scalar_t__ ifm_count; int /*<<< orphan*/  ifm_active; int /*<<< orphan*/  mi_active; int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  mi_status; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {scalar_t__ ifm_count; int /*<<< orphan*/  ifm_active; int /*<<< orphan*/  mi_active; int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  mi_status; } ;
typedef  int /*<<< orphan*/  mi ;
typedef  int /*<<< orphan*/  ifmr ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (struct media_info*,int) ; 
 scalar_t__ FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct media_info*) ; 

__attribute__((used)) static struct media_info
FUNC2(struct ifnet * ifp)
{
    struct ifmediareq	ifmr;
    struct media_info	mi;

    FUNC0(&mi, sizeof(mi));
    FUNC0(&ifmr, sizeof(ifmr));
    if (FUNC1(ifp, 0, SIOCGIFMEDIA, &ifmr) == 0) {
	if (ifmr.ifm_count != 0) {
	    mi.mi_status = ifmr.ifm_status;
	    mi.mi_active = ifmr.ifm_active;
	}
    }
    return (mi);
}