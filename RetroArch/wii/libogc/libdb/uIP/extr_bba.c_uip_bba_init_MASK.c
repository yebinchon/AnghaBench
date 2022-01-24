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
struct uip_netif {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ s8_t ;
typedef  int s32_t ;

/* Variables and functions */
 scalar_t__ UIP_ERR_IF ; 
 scalar_t__ UIP_ERR_OK ; 
 int /*<<< orphan*/  UIP_NETIF_FLAG_LINK_UP ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  bba_arp_tmr ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct uip_netif*) ; 
 int /*<<< orphan*/ * bba_recv_pbufs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct uip_netif*) ; 

s8_t FUNC7(struct uip_netif *dev)
{
	s8_t ret;
	s32_t cnt;

	ret = FUNC2(dev);
	if(ret<0) return ret;

	ret = FUNC1();
	if(ret<0) return ret;

	cnt = 0;
	do {
		FUNC4(500);
		cnt++;
	} while((ret=FUNC0())==0 && cnt<10000);
	if(!ret) return UIP_ERR_IF;

	dev->flags |= UIP_NETIF_FLAG_LINK_UP;
	FUNC6(dev);
	FUNC5();

	bba_recv_pbufs = NULL;
	bba_arp_tmr = FUNC3();

	return UIP_ERR_OK;
}