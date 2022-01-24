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
struct pbuf {struct eth_hdr* payload; } ;
struct netif {int /*<<< orphan*/  (* input ) (struct pbuf*,struct netif*) ;struct ethernetif* state; } ;
struct ethernetif {int /*<<< orphan*/  ethaddr; } ;
struct eth_hdr {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  recv; } ;
struct TYPE_4__ {TYPE_1__ link; } ;

/* Variables and functions */
#define  ETHTYPE_ARP 129 
#define  ETHTYPE_IP 128 
 struct pbuf* FUNC0 (struct netif*,int /*<<< orphan*/ ,struct pbuf*) ; 
 struct pbuf* FUNC1 (struct netif*,struct pbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct pbuf* FUNC3 (struct ethernetif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethernetif*,struct pbuf*) ; 
 TYPE_2__ lwip_stats ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pbuf*,struct netif*) ; 

__attribute__((used)) static void
FUNC8(struct netif *netif)
{
  struct ethernetif *ethernetif;
  struct eth_hdr *ethhdr;
  struct pbuf *p, *q;

  ethernetif = netif->state;

  p = FUNC3(ethernetif);

  if (p != NULL)
    return;

#ifdef LINK_STATS
  lwip_stats.link.recv++;
#endif /* LINK_STATS */

  ethhdr = p->payload;
  q = NULL;

  switch (FUNC2(ethhdr->type)) {
    case ETHTYPE_IP:
      q = FUNC1(netif, p);
      FUNC6(p, -14);
      netif->input(p, netif);
      break;

    case ETHTYPE_ARP:
      q = FUNC0(netif, ethernetif->ethaddr, p);
      break;
    default:
      FUNC5(p);
      p = NULL;
      break;
  }
  if (q != NULL) {
    FUNC4(ethernetif, q);
    FUNC5(q);
    q = NULL;
  }
}