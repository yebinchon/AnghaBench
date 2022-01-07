
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_errors; int tx_collisions; int tx_windowerrors; int tx_fifoerrors; int tx_carriererrors; } ;
struct bba_priv {TYPE_1__ txrx_stats; } ;


 int BBA_TX_STATUS_CCMASK ;
 int BBA_TX_STATUS_CRSLOST ;
 int BBA_TX_STATUS_OWC ;
 int BBA_TX_STATUS_TERR ;
 int BBA_TX_STATUS_UF ;
 int LWIP_ERROR (char*) ;

__attribute__((used)) static u32 __bba_tx_err(u8 status,struct bba_priv *priv)
{
 u32 last_errors = priv->txrx_stats.tx_errors;

 if(status&BBA_TX_STATUS_TERR) {
  priv->txrx_stats.tx_errors++;
  if(status&BBA_TX_STATUS_CCMASK)
   priv->txrx_stats.tx_collisions += (status&BBA_TX_STATUS_CCMASK);

  if(status&BBA_TX_STATUS_CRSLOST)
   priv->txrx_stats.tx_carriererrors++;

  if(status&BBA_TX_STATUS_UF)
   priv->txrx_stats.tx_fifoerrors++;

  if(status&BBA_TX_STATUS_OWC)
   priv->txrx_stats.tx_windowerrors++;
 }
 if(last_errors!=priv->txrx_stats.tx_errors)
  LWIP_ERROR(("__bba_tx_err(%02x)\n",status));

 return priv->txrx_stats.tx_errors;
}
