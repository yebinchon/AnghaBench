
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int mtu; int flags; int * hwaddr; int hwaddr_len; } ;


 int DMARxDscrTab ;
 int * DMATxDscrTab ;
 int ETHARP_HWADDR_LEN ;
 int ETH_DMARxDescChainInit (int ,int *,int ) ;
 int ETH_DMATxDescChainInit (int *,int *,int) ;
 int ETH_DMATxDescChecksumInsertionConfig (int *,int ) ;
 int ETH_DMATxDesc_ChecksumTCPUDPICMPFull ;
 int ETH_MACAddressConfig (int ,int *) ;
 int ETH_MAC_Address0 ;
 int ETH_RXBUFNB ;
 int ETH_Start () ;
 int ETH_TXBUFNB ;
 int MAC_ADDR0 ;
 int MAC_ADDR1 ;
 int MAC_ADDR2 ;
 int MAC_ADDR3 ;
 int MAC_ADDR4 ;
 int NETIF_FLAG_BROADCAST ;
 int NETIF_FLAG_ETHARP ;
 int ** Rx_Buff ;
 int ** Tx_Buff ;
 int mac_last_octet ;

__attribute__((used)) static void low_level_init(struct netif *netif)
{




  netif->hwaddr_len = ETHARP_HWADDR_LEN;


  netif->hwaddr[0] = MAC_ADDR0;
  netif->hwaddr[1] = MAC_ADDR1;
  netif->hwaddr[2] = MAC_ADDR2;
  netif->hwaddr[3] = MAC_ADDR3;
  netif->hwaddr[4] = MAC_ADDR4;
  netif->hwaddr[5] = mac_last_octet;


  ETH_MACAddressConfig(ETH_MAC_Address0, netif->hwaddr);


  netif->mtu = 1500;



  netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP;


  ETH_DMATxDescChainInit(DMATxDscrTab, &Tx_Buff[0][0], ETH_TXBUFNB);

  ETH_DMARxDescChainInit(DMARxDscrTab, &Rx_Buff[0][0], ETH_RXBUFNB);
  ETH_Start();

}
