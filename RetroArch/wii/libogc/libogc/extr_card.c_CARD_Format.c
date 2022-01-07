
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int SYS_GetFontEncoding () ;
 int __card_formatregion (int ,int ,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_Format(s32 chn)
{
 s32 ret;
 u32 enc;

 enc = SYS_GetFontEncoding();
 if((ret=__card_formatregion(chn,enc,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
