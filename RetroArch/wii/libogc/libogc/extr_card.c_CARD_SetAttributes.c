
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int CARD_SetAttributesAsync (int ,int ,int ,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_SetAttributes(s32 chn,s32 fileno,u8 attr)
{
 s32 ret;

 if((ret=CARD_SetAttributesAsync(chn,fileno,attr,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
