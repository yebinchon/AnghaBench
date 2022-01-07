
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int AIDCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __AID_Callback ;

AIDCallback AUDIO_RegisterDMACallback(AIDCallback callback)
{
 u32 level;
 AIDCallback old;

 _CPU_ISR_Disable(level);
 old = __AID_Callback;
 __AID_Callback = callback;
 _CPU_ISR_Restore(level);
 return old;
}
