
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int card_file ;
typedef int card_dir ;


 int CARD_CreateEntryAsync (int ,int *,int *,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_CreateEntry(s32 chn,card_dir *direntry,card_file *file)
{
 s32 ret;

 if((ret=CARD_CreateEntryAsync(chn,direntry,file,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
