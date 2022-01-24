#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pbuf {int dummy; } ;
struct netif {int /*<<< orphan*/  (* output ) (struct netif*,struct pbuf*,struct ip_addr*) ;} ;
struct ip_hdr {scalar_t__ hoplim; scalar_t__ nexthdr; int /*<<< orphan*/  dest; } ;
struct ip_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit; int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_TE_TTL ; 
 int /*<<< orphan*/  IP_DEBUG ; 
 scalar_t__ IP_PROTO_ICMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PERF_START ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*,int /*<<< orphan*/ ) ; 
 TYPE_1__ ip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ip_addr*) ; 
 struct netif* FUNC5 (struct ip_addr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct netif*,struct pbuf*,struct ip_addr*) ; 

__attribute__((used)) static void
FUNC8(struct pbuf *p, struct ip_hdr *iphdr)
{
  struct netif *netif;

  PERF_START;

  if ((netif = FUNC5((struct ip_addr *)&(iphdr->dest))) == NULL) {

    FUNC1(IP_DEBUG, ("ip_input: no forwarding route found for "));
#if IP_DEBUG
    ip_addr_debug_print(IP_DEBUG, ((struct ip_addr *)&(iphdr->dest)));
#endif /* IP_DEBUG */
    FUNC1(IP_DEBUG, ("\n"));
    FUNC6(p);
    return;
  }
  /* Decrement TTL and send ICMP if ttl == 0. */
  if (--iphdr->hoplim == 0) {
#if LWIP_ICMP
    /* Don't send ICMP messages in response to ICMP messages */
    if (iphdr->nexthdr != IP_PROTO_ICMP) {
      icmp_time_exceeded(p, ICMP_TE_TTL);
    }
#endif /* LWIP_ICMP */
    FUNC6(p);
    return;
  }

  /* Incremental update of the IP checksum. */
  /*  if (iphdr->chksum >= htons(0xffff - 0x100)) {
    iphdr->chksum += htons(0x100) + 1;
  } else {
    iphdr->chksum += htons(0x100);
    }*/


  FUNC1(IP_DEBUG, ("ip_forward: forwarding packet to "));
#if IP_DEBUG
  ip_addr_debug_print(IP_DEBUG, ((struct ip_addr *)&(iphdr->dest)));
#endif /* IP_DEBUG */
  FUNC1(IP_DEBUG, ("\n"));

  FUNC0(ip.fw);
  FUNC0(ip.xmit);

  FUNC2("ip_forward");

  netif->output(netif, p, (struct ip_addr *)&(iphdr->dest));
}