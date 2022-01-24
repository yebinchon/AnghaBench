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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ dhcp_fine_tmr ; 
 int /*<<< orphan*/  dhcp_finetimer_cntrl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  net_dhcpfine_ticks ; 
 int /*<<< orphan*/  tmr_callback ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	FUNC0();
	FUNC3(tmr_callback,(void*)dhcp_fine_tmr);
	FUNC2(&dhcp_finetimer_cntrl,net_dhcpfine_ticks);
	FUNC1();
}