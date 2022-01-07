
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAD_ENABLEDMASK (int ) ;
 int SI_DisablePolling (int ) ;
 int SYS_SetWirelessID (int ,int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __pad_checkingbits ;
 int __pad_enabledbits ;
 int __pad_pendingbits ;
 int __pad_waitingbits ;

__attribute__((used)) static void __pad_disable(u32 chan)
{
 u32 level,mask;
 _CPU_ISR_Disable(level);
 mask = PAD_ENABLEDMASK(chan);
 SI_DisablePolling(mask);
 __pad_enabledbits &= ~mask;
 __pad_waitingbits &= ~mask;
 __pad_pendingbits &= ~mask;
 __pad_checkingbits &= ~mask;
 SYS_SetWirelessID(chan,0);
 _CPU_ISR_Restore(level);
}
