
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int mtu; int flags; int hwaddr_len; int linkoutput; int output_ip6; int output; int hostname; } ;
typedef int err_t ;


 int CONFIG_LWIP_LOCAL_HOSTNAME ;
 int ERR_OK ;
 int ETHARP_HWADDR_LEN ;
 int NETIF_FLAG_BROADCAST ;
 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_IGMP ;
 int NETIF_FLAG_LINK_UP ;
 int NETIF_INIT_SNMP (struct netif*,int ,int) ;
 int etharp_output ;
 int ethip6_output ;
 struct netif* g_last_netif ;
 int snmp_ifType_ethernet_csmacd ;
 int testnetif_output ;

err_t testnetif_init(struct netif *netif)
{

    g_last_netif = netif;

    netif->hostname = CONFIG_LWIP_LOCAL_HOSTNAME;






    NETIF_INIT_SNMP(netif, snmp_ifType_ethernet_csmacd, 100);





    netif->output = etharp_output;



    netif->linkoutput = testnetif_output;

    netif->hwaddr_len = ETHARP_HWADDR_LEN;




    netif->mtu = 1500;



    netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP | NETIF_FLAG_LINK_UP;






    return ERR_OK;

}
