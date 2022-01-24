#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ip_addr {scalar_t__ addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_LINK_DOWN ; 
 int /*<<< orphan*/  DHCP_START ; 
 int /*<<< orphan*/  DHCP_state ; 
 int ETH_INIT_FLAG ; 
 int ETH_LINK_FLAG ; 
 int /*<<< orphan*/  ETH_link_callback ; 
 int EthStatus ; 
 int /*<<< orphan*/  GW_ADDR0 ; 
 int /*<<< orphan*/  GW_ADDR1 ; 
 int /*<<< orphan*/  GW_ADDR2 ; 
 int /*<<< orphan*/  GW_ADDR3 ; 
 int /*<<< orphan*/  FUNC0 (struct ip_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_ADDR0 ; 
 int /*<<< orphan*/  IP_ADDR1 ; 
 int /*<<< orphan*/  IP_ADDR2 ; 
 int /*<<< orphan*/  IP_lastOctet ; 
 int /*<<< orphan*/  NETIF_FLAG_LINK_UP ; 
 int /*<<< orphan*/  NETMASK_ADDR0 ; 
 int /*<<< orphan*/  NETMASK_ADDR1 ; 
 int /*<<< orphan*/  NETMASK_ADDR2 ; 
 int /*<<< orphan*/  NETMASK_ADDR3 ; 
 int /*<<< orphan*/  ethernet_input ; 
 int /*<<< orphan*/  ethernetif_init ; 
 TYPE_1__ gnetif ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ip_addr*,struct ip_addr*,struct ip_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void)
{
  struct ip_addr ipaddr;
  struct ip_addr netmask;
  struct ip_addr gw;

  /* Initializes the dynamic memory heap defined by MEM_SIZE.*/
  FUNC1();

  /* Initializes the memory pools defined by MEMP_NUM_x.*/
  FUNC2();

#ifdef USE_DHCP
  ipaddr.addr = 0;
  netmask.addr = 0;
  gw.addr = 0;
#else
  FUNC0(&ipaddr, IP_ADDR0, IP_ADDR1, IP_ADDR2, IP_lastOctet);
  FUNC0(&netmask, NETMASK_ADDR0, NETMASK_ADDR1 , NETMASK_ADDR2, NETMASK_ADDR3);
  FUNC0(&gw, GW_ADDR0, GW_ADDR1, GW_ADDR2, GW_ADDR3);
#endif

  /* - netif_add(struct netif *netif, struct ip_addr *ipaddr,
  struct ip_addr *netmask, struct ip_addr *gw,
  void *state, err_t (* init)(struct netif *netif),
  err_t (* input)(struct pbuf *p, struct netif *netif))

  Adds your network interface to the netif_list. Allocate a struct
  netif and pass a pointer to this structure as the first argument.
  Give pointers to cleared ip_addr structures when using DHCP,
  or fill them with sane numbers otherwise. The state pointer may be NULL.

  The init function pointer must point to a initialization function for
  your ethernet netif interface. The following code illustrates it's use.*/
  FUNC3(&gnetif, &ipaddr, &netmask, &gw, NULL, &ethernetif_init, &ethernet_input);

  /*  Registers the default network interface.*/
  FUNC4(&gnetif);

  if (EthStatus == (ETH_INIT_FLAG | ETH_LINK_FLAG))
  {
    /* Set Ethernet link flag */
    gnetif.flags |= NETIF_FLAG_LINK_UP;

    /* When the netif is fully configured this function must be called.*/
    FUNC7(&gnetif);
#ifdef USE_DHCP
    DHCP_state = DHCP_START;
#else

#endif /* USE_DHCP */
  }
  else
  {
    /*  When the netif link is down this function must be called.*/
    FUNC5(&gnetif);
#ifdef USE_DHCP
    DHCP_state = DHCP_LINK_DOWN;
#endif /* USE_DHCP */
  }

  /* Set the link callback function, this function is called on change of link status*/
  FUNC6(&gnetif, ETH_link_callback);
}