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
struct uip_netif {int /*<<< orphan*/  gw; } ;
struct uip_ip_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uip_ip_addr*) ; 

void FUNC1(struct uip_netif *netif,struct uip_ip_addr *gw)
{
	FUNC0(&netif->gw,gw);
}