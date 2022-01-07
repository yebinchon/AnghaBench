
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {char* hostname; int linkoutput; int output; int * name; } ;
typedef int err_t ;


 int ERR_OK ;
 int IFNAME0 ;
 int IFNAME1 ;
 int LWIP_ASSERT (char*,int ) ;
 int etharp_output ;
 int low_level_init (struct netif*) ;
 int low_level_output ;

err_t ethernetif_init(struct netif *netif)
{
  LWIP_ASSERT("netif != NULL", (netif != ((void*)0)));






  netif->name[0] = IFNAME0;
  netif->name[1] = IFNAME1;




  netif->output = etharp_output;
  netif->linkoutput = low_level_output;


  low_level_init(netif);

  return ERR_OK;
}
