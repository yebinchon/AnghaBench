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
typedef  int /*<<< orphan*/  u8_t ;
struct uip_pbuf {int dummy; } ;
struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_ERR_RTE ; 
 int /*<<< orphan*/  FUNC1 (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uip_netif*) ; 
 struct uip_netif* FUNC2 (struct uip_ip_addr*) ; 

s8_t FUNC3(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t ttl,u8_t tos,u8_t proto)
{
	struct uip_netif *netif;

	if((netif=FUNC2(dst))==NULL) {
		FUNC0("uip_ipoutput: No route found.\n");
		return UIP_ERR_RTE;
	}
	return FUNC1(p,src,dst,ttl,tos,proto,netif);
}