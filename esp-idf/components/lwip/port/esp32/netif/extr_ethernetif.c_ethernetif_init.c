
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {char* hostname; int l2_buffer_free_notify; int linkoutput; int output_ip6; int output; int * name; } ;
typedef scalar_t__ eth_speed_t ;
typedef int esp_eth_handle_t ;
typedef int err_t ;


 char* CONFIG_LWIP_LOCAL_HOSTNAME ;
 int ERR_OK ;
 int ETH_CMD_G_SPEED ;
 scalar_t__ ETH_SPEED_100M ;
 int IFNAME0 ;
 int IFNAME1 ;
 int LWIP_ASSERT (char*,int ) ;
 int NETIF_INIT_SNMP (struct netif*,int ,int) ;
 int esp_eth_ioctl (int ,int ,scalar_t__*) ;
 int esp_netif_get_handle_from_netif_impl (struct netif*) ;
 int esp_netif_get_io_driver (int ) ;
 int etharp_output ;
 int ethernet_free_rx_buf_l2 ;
 int ethernet_low_level_init (struct netif*) ;
 int ethernet_low_level_output ;
 int ethip6_output ;
 int snmp_ifType_ethernet_csmacd ;

err_t ethernetif_init(struct netif *netif)
{
    LWIP_ASSERT("netif != NULL", (netif != ((void*)0)));

    esp_eth_handle_t eth_handle = esp_netif_get_io_driver(esp_netif_get_handle_from_netif_impl(netif));
    eth_speed_t speed;

    esp_eth_ioctl(eth_handle, ETH_CMD_G_SPEED, &speed);
    if (speed == ETH_SPEED_100M) {
        NETIF_INIT_SNMP(netif, snmp_ifType_ethernet_csmacd, 100000000);
    } else {
        NETIF_INIT_SNMP(netif, snmp_ifType_ethernet_csmacd, 10000000);
    }

    netif->name[0] = IFNAME0;
    netif->name[1] = IFNAME1;
    netif->output = etharp_output;



    netif->linkoutput = ethernet_low_level_output;
    netif->l2_buffer_free_notify = ethernet_free_rx_buf_l2;

    ethernet_low_level_init(netif);

    return ERR_OK;
}
