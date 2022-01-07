
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ip_addr {scalar_t__ addr; } ;
struct TYPE_7__ {int flags; } ;


 int DHCP_LINK_DOWN ;
 int DHCP_START ;
 int DHCP_state ;
 int ETH_INIT_FLAG ;
 int ETH_LINK_FLAG ;
 int ETH_link_callback ;
 int EthStatus ;
 int GW_ADDR0 ;
 int GW_ADDR1 ;
 int GW_ADDR2 ;
 int GW_ADDR3 ;
 int IP4_ADDR (struct ip_addr*,int ,int ,int ,int ) ;
 int IP_ADDR0 ;
 int IP_ADDR1 ;
 int IP_ADDR2 ;
 int IP_lastOctet ;
 int NETIF_FLAG_LINK_UP ;
 int NETMASK_ADDR0 ;
 int NETMASK_ADDR1 ;
 int NETMASK_ADDR2 ;
 int NETMASK_ADDR3 ;
 int ethernet_input ;
 int ethernetif_init ;
 TYPE_1__ gnetif ;
 int mem_init () ;
 int memp_init () ;
 int netif_add (TYPE_1__*,struct ip_addr*,struct ip_addr*,struct ip_addr*,int *,int *,int *) ;
 int netif_set_default (TYPE_1__*) ;
 int netif_set_down (TYPE_1__*) ;
 int netif_set_link_callback (TYPE_1__*,int ) ;
 int netif_set_up (TYPE_1__*) ;

void LwIP_Init(void)
{
  struct ip_addr ipaddr;
  struct ip_addr netmask;
  struct ip_addr gw;


  mem_init();


  memp_init();






  IP4_ADDR(&ipaddr, IP_ADDR0, IP_ADDR1, IP_ADDR2, IP_lastOctet);
  IP4_ADDR(&netmask, NETMASK_ADDR0, NETMASK_ADDR1 , NETMASK_ADDR2, NETMASK_ADDR3);
  IP4_ADDR(&gw, GW_ADDR0, GW_ADDR1, GW_ADDR2, GW_ADDR3);
  netif_add(&gnetif, &ipaddr, &netmask, &gw, ((void*)0), &ethernetif_init, &ethernet_input);


  netif_set_default(&gnetif);

  if (EthStatus == (ETH_INIT_FLAG | ETH_LINK_FLAG))
  {

    gnetif.flags |= NETIF_FLAG_LINK_UP;


    netif_set_up(&gnetif);





  }
  else
  {

    netif_set_down(&gnetif);



  }


  netif_set_link_callback(&gnetif, ETH_link_callback);
}
