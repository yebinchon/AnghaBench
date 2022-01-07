
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_errors; scalar_t__ rx_errors; int rx_frameerrors; int rx_overerrors; int rx_lengtherrors; int rx_fifoerrors; int rx_crcerrors; } ;
struct bba_priv {TYPE_1__ txrx_stats; } ;


 int BBA_RX_STATUS_BF ;
 int BBA_RX_STATUS_CRC ;
 int BBA_RX_STATUS_FAE ;
 int BBA_RX_STATUS_FO ;
 int BBA_RX_STATUS_RERR ;
 int BBA_RX_STATUS_RF ;
 int BBA_RX_STATUS_RW ;
 int LWIP_ERROR (char*) ;

__attribute__((used)) static u32 __bba_rx_err(u8 status,struct bba_priv *priv)
{
 u32 last_errors = priv->txrx_stats.tx_errors;

 if(status&0xff) {
  priv->txrx_stats.rx_overerrors++;
  priv->txrx_stats.rx_errors++;
 } else {
  if(status&BBA_RX_STATUS_RERR) {
   priv->txrx_stats.rx_errors++;
   if(status&BBA_RX_STATUS_BF)
    priv->txrx_stats.rx_overerrors++;

   if(status&BBA_RX_STATUS_CRC)
    priv->txrx_stats.rx_crcerrors++;

   if(status&BBA_RX_STATUS_FO)
    priv->txrx_stats.rx_fifoerrors++;

   if(status&BBA_RX_STATUS_RW)
    priv->txrx_stats.rx_lengtherrors++;

   if(status&BBA_RX_STATUS_RF)
    priv->txrx_stats.rx_lengtherrors++;

   if(status&BBA_RX_STATUS_BF)
    priv->txrx_stats.rx_overerrors++;
  }
  if(status&BBA_RX_STATUS_FAE) {
   priv->txrx_stats.rx_errors++;
   priv->txrx_stats.rx_frameerrors++;
  }
 }
 if(last_errors!=priv->txrx_stats.rx_errors)
  LWIP_ERROR(("__bba_rx_err(%02x)\n",status));

 return priv->txrx_stats.rx_errors;
}
