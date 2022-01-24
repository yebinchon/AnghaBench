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
struct netif {int dummy; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netif*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
    ip_addr_t *gw)
{
  FUNC1(netif, ipaddr);
  FUNC2(netif, netmask);
  FUNC0(netif, gw);
}