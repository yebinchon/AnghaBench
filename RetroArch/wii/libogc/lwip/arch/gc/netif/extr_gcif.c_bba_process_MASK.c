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
struct pbuf {struct eth_hdr* payload; } ;
struct netif {scalar_t__ state; } ;
struct eth_hdr {int /*<<< orphan*/  type; } ;
struct bba_priv {int /*<<< orphan*/  ethaddr; } ;
typedef  int s32 ;

/* Variables and functions */
#define  ETHTYPE_ARP 129 
#define  ETHTYPE_IP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct netif*,int /*<<< orphan*/ ,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct netif*,struct pbuf*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*,struct netif*) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,int const) ; 

void FUNC7(struct pbuf *p,struct netif *dev)
{
	struct eth_hdr *ethhdr = NULL;
	struct bba_priv *priv = (struct bba_priv*)dev->state;
	const s32 hlen = sizeof(struct eth_hdr);

	if(p) {
		ethhdr = p->payload;
		switch(FUNC3(ethhdr->type)) {
			case ETHTYPE_IP:
				FUNC0(NETIF_DEBUG,("bba_process: passing packet up to IP layer\n"));

				FUNC2(dev,p);
				FUNC6(p,-(hlen));
				FUNC4(p,dev);
				break;
			case ETHTYPE_ARP:
				/* pass p to ARP module, get ARP reply or ARP queued packet */
				FUNC0(NETIF_DEBUG,("bba_process: passing packet up to ARP layer\n"));
				FUNC1(dev, priv->ethaddr, p);
				break;
			/* unsupported Ethernet packet type */
			default:
				/* free pbuf */
				FUNC5(p);
				break;
		}
	}
}