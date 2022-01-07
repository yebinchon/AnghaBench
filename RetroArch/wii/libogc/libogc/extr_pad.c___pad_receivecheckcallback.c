
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int PAD_ENABLEDMASK (size_t) ;
 int SI_GC_WIRELESS ;
 int SI_Transfer (size_t,int *,int,int ,int,int ,int ) ;
 int SI_WIRELESS_CONT_MASK ;
 int SI_WIRELESS_FIX_ID ;
 int SI_WIRELESS_IR ;
 int SI_WIRELESS_LITE ;
 int SI_WIRELESS_RECEIVED ;
 int __pad_checkingbits ;
 int __pad_cmdreadorigin ;
 int __pad_disable (size_t) ;
 int __pad_enabledbits ;
 int * __pad_origin ;
 int __pad_originupdatecallback ;
 int __pad_waitingbits ;

__attribute__((used)) static void __pad_receivecheckcallback(s32 chan,u32 type)
{
 u32 mask,tmp;
 mask = PAD_ENABLEDMASK(chan);
 if(__pad_enabledbits&mask) {
  tmp = type&0xff;
  type &= ~0xff;
  __pad_waitingbits &= ~mask;
  __pad_checkingbits &= ~mask;
  if(!(tmp&0x0f)
   && (type&SI_GC_WIRELESS) && (type&SI_WIRELESS_RECEIVED) && (type&SI_WIRELESS_FIX_ID)
   && !(type&SI_WIRELESS_IR) && !(type&SI_WIRELESS_CONT_MASK) && !(type&SI_WIRELESS_LITE)) SI_Transfer(chan,&__pad_cmdreadorigin,1,__pad_origin[chan],10,__pad_originupdatecallback,0);
  else __pad_disable(chan);
 }
}
