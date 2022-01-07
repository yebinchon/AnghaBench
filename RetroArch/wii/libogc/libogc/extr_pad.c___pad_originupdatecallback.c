
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int PAD_ENABLEDMASK (int ) ;
 int SI_ERROR_NO_RESPONSE ;
 int __pad_disable (int ) ;
 int __pad_enabledbits ;
 int __pad_updateorigin (int ) ;

__attribute__((used)) static void __pad_originupdatecallback(s32 chan,u32 type)
{
 u32 en_bits = __pad_enabledbits&PAD_ENABLEDMASK(chan);

 if(en_bits) {
  if(!(type&0x0f)) __pad_updateorigin(chan);
  if(type&SI_ERROR_NO_RESPONSE) __pad_disable(chan);
 }
}
