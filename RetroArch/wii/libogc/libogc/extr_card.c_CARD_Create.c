
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int card_file ;


 int CARD_CreateAsync (int ,char const*,int ,int *,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_Create(s32 chn,const char *filename,u32 size,card_file *file)
{
 s32 ret;

 if((ret=CARD_CreateAsync(chn,filename,size,file,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
