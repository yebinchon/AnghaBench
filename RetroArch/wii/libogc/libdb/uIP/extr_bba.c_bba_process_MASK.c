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
struct uip_pbuf {struct uip_eth_hdr* payload; } ;
struct uip_netif {int /*<<< orphan*/  (* input ) (struct uip_pbuf*,struct uip_netif*) ;scalar_t__ state; } ;
struct uip_eth_hdr {int /*<<< orphan*/  type; } ;
struct bba_priv {int /*<<< orphan*/  ethaddr; } ;
typedef  int s32 ;

/* Variables and functions */
#define  UIP_ETHTYPE_ARP 129 
#define  UIP_ETHTYPE_IP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uip_pbuf*,struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_netif*,int /*<<< orphan*/ ,struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct uip_netif*,struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct uip_pbuf*,int const) ; 

__attribute__((used)) static void FUNC6(struct uip_pbuf *p,struct uip_netif *dev)
{
	struct uip_eth_hdr *ethhdr = NULL;
	struct bba_priv *priv = (struct bba_priv*)dev->state;
	const s32 ethhlen = sizeof(struct uip_eth_hdr);

	if(p) {
		ethhdr = p->payload;
		switch(FUNC0(ethhdr->type)) {
			case UIP_ETHTYPE_IP:
				FUNC3(dev,p);
				FUNC5(p,-(ethhlen));
				dev->input(p,dev);
				break;
			case UIP_ETHTYPE_ARP:
				FUNC2(dev,priv->ethaddr,p);
				break;
			default:
				FUNC4(p);
				break;
		}
	}
}