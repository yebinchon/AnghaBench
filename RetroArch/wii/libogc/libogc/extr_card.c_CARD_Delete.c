
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int CARD_DeleteAsync (int ,char const*,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_Delete(s32 chn,const char *filename)
{
 s32 ret;
 if((ret=CARD_DeleteAsync(chn,filename,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
