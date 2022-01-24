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
typedef  int user_addr_t ;
struct pfr_addr {int /*<<< orphan*/  pfra_fback; } ;
typedef  int /*<<< orphan*/  ad ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct pfr_addr*,int,int) ; 
 scalar_t__ FUNC1 (struct pfr_addr*,int,int,int) ; 
 int /*<<< orphan*/  PFR_FB_NONE ; 

__attribute__((used)) static void
FUNC2(user_addr_t addr, int size, int flags)
{
	struct pfr_addr	ad;
	int		i;

	for (i = 0; i < size; i++, addr += sizeof (ad)) {
		if (FUNC0(addr, &ad, sizeof (ad), flags))
			break;
		ad.pfra_fback = PFR_FB_NONE;
		if (FUNC1(&ad, addr, sizeof (ad), flags))
			break;
	}
}