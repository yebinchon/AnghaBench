
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SI_DisablePolling (int) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __pad_checkingbits ;
 int __pad_doreset () ;
 int __pad_enabledbits ;
 int __pad_pendingbits ;
 int __pad_recalibratebits ;
 int __pad_resettingbits ;
 int __pad_resettingchan ;
 int __pad_spec ;
 int __pad_waitingbits ;

u32 PAD_Reset(u32 mask)
{
 u32 level;
 u32 pend_bits,en_bits;

 _CPU_ISR_Disable(level);
 pend_bits = (__pad_pendingbits|mask);
 __pad_pendingbits = 0;

 pend_bits &= ~(__pad_waitingbits|__pad_checkingbits);
 __pad_resettingbits |= pend_bits;

 en_bits = (__pad_resettingbits&__pad_enabledbits);
 __pad_enabledbits &= ~pend_bits;

 if(__pad_spec==4) __pad_recalibratebits |= pend_bits;

 SI_DisablePolling(en_bits);
 if(__pad_resettingchan==32) __pad_doreset();
 _CPU_ISR_Restore(level);

 return 1;
}
