
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bba_priv {int dummy; } ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 scalar_t__ EXI_Lock (int ,int ,int ) ;
 int LWIP_DEBUGF (int,char*) ;
 int LWP_ThreadSleep (int ) ;
 int NETIF_DEBUG ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __bba_exi_unlockcb ;
 int wait_exi_queue ;

__attribute__((used)) static __inline__ void __bba_exi_stop(struct bba_priv *priv)
{
 u32 level;

 _CPU_ISR_Disable(level);
 while(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,__bba_exi_unlockcb)==0) {
  LWIP_DEBUGF(NETIF_DEBUG|1,("__bba_exi_wait(exi locked)\n"));
  LWP_ThreadSleep(wait_exi_queue);
 }
 _CPU_ISR_Restore(level);
}
