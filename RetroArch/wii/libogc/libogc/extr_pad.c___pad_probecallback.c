
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int PAD_ENABLEDMASK (int ) ;
 int __pad_doreset () ;
 int __pad_enable (int ) ;
 int __pad_resettingchan ;
 int __pad_waitingbits ;

__attribute__((used)) static void __pad_probecallback(s32 chan,u32 type)
{
 if(!(type&0x0f)) {
  __pad_enable(__pad_resettingchan);
  __pad_waitingbits |= PAD_ENABLEDMASK(__pad_resettingchan);
 }
 __pad_doreset();
}
