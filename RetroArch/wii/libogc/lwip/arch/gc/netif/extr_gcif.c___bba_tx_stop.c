
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bba_priv {scalar_t__ state; int tq_xmit; } ;


 scalar_t__ ERR_TXPENDING ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_ThreadSleep (int ) ;
 int NETIF_DEBUG ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

__attribute__((used)) static __inline__ void __bba_tx_stop(struct bba_priv *priv)
{
 u32 level;

 _CPU_ISR_Disable(level);
 while(priv->state==ERR_TXPENDING) {
  LWIP_DEBUGF(NETIF_DEBUG,("__bba_tx_stop(pending tx)\n"));
  LWP_ThreadSleep(priv->tq_xmit);
 }
 priv->state = ERR_TXPENDING;
 _CPU_ISR_Restore(level);
}
