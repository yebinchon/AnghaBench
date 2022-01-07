
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_4__ {int chn; } ;
typedef TYPE_1__ card_file ;


 int CARD_ReadAsync (TYPE_1__*,void*,int ,int ,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_Read(card_file *file,void *buffer,u32 len,u32 offset)
{
 s32 ret;

 if((ret=CARD_ReadAsync(file,buffer,len,offset,__card_synccallback))>=0) {
  ret = __card_sync(file->chn);
 }
 return ret;
}
