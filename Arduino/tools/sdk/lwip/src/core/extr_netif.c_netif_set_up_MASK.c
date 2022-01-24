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
struct netif {int flags; int /*<<< orphan*/  ts; } ;

/* Variables and functions */
 int NETIF_FLAG_ETHARP ; 
 int NETIF_FLAG_IGMP ; 
 int NETIF_FLAG_LINK_UP ; 
 int NETIF_FLAG_UP ; 
 int /*<<< orphan*/  FUNC0 (struct netif*) ; 
 int /*<<< orphan*/  FUNC1 (struct netif*) ; 
 int /*<<< orphan*/  FUNC2 (struct netif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct netif *netif)
{
  if (!(netif->flags & NETIF_FLAG_UP)) {
    netif->flags |= NETIF_FLAG_UP;
    
#if LWIP_SNMP
    snmp_get_sysuptime(&netif->ts);
#endif /* LWIP_SNMP */

    FUNC0(netif);

    if (netif->flags & NETIF_FLAG_LINK_UP) {
#if LWIP_ARP
      /* For Ethernet network interfaces, we would like to send a "gratuitous ARP" */ 
      if (netif->flags & (NETIF_FLAG_ETHARP)) {
        etharp_gratuitous(netif);
      }
#endif /* LWIP_ARP */

#if LWIP_IGMP
      /* resend IGMP memberships */
      if (netif->flags & NETIF_FLAG_IGMP) {
        igmp_report_groups( netif);
      }
#endif /* LWIP_IGMP */
    }
  }
}