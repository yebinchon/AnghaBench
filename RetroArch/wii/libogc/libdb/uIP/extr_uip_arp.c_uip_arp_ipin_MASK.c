#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uip_pbuf {struct uip_ethip_hdr* payload; } ;
struct uip_netif {int /*<<< orphan*/  netmask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  src; } ;
struct uip_ethip_hdr {TYPE_2__ ethhdr; TYPE_1__ ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uip_netif*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct uip_netif *netif,struct uip_pbuf *p)
{
	struct uip_ethip_hdr *hdr;

	hdr = p->payload;
	if(!FUNC0(&hdr->ip.src,&netif->ip_addr,&netif->netmask)) return;

	FUNC1(netif,&hdr->ip.src,&hdr->ethhdr.src,0);
 }