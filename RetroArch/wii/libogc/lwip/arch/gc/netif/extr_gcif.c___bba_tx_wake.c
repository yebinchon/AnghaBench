
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bba_priv {scalar_t__ state; int tq_xmit; } ;


 scalar_t__ ERR_OK ;
 scalar_t__ ERR_TXPENDING ;
 int LWP_ThreadBroadcast (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

__attribute__((used)) static __inline__ void __bba_tx_wake(struct bba_priv *priv)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(priv->state==ERR_TXPENDING) {
  priv->state = ERR_OK;
  LWP_ThreadBroadcast(priv->tq_xmit);
 }
 _CPU_ISR_Restore(level);
}
