
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int * cardcallback ;
struct TYPE_7__ {int iblock; int chn; } ;
typedef TYPE_1__ card_file ;
struct TYPE_8__ {int sector_size; void* cmd_usr_buf; int * card_api_cb; } ;
typedef TYPE_2__ card_block ;


 int CARD_ERROR_FATAL_ERROR ;
 int DCStoreRange (void*,int) ;
 int * __card_defaultapicallback ;
 int __card_putcntrlblock (TYPE_2__*,int ) ;
 int __card_sectorerase (int ,int,int ) ;
 int __card_seek (TYPE_1__*,int,int,TYPE_2__**) ;
 int __erase_callback ;

s32 CARD_WriteAsync(card_file *file,void *buffer,u32 len,u32 offset,cardcallback callback)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_block *card = ((void*)0);

 if((ret=__card_seek(file,len,offset,&card))<0) return ret;
 if(len<0 || (len&(card->sector_size-1)) || (offset>0 && offset&(card->sector_size-1))) {
  __card_putcntrlblock(card,CARD_ERROR_FATAL_ERROR);
  return CARD_ERROR_FATAL_ERROR;
 }

 DCStoreRange(buffer,len);
 cb = callback;
 if(!cb) cb = __card_defaultapicallback;
 card->card_api_cb = cb;

 card->cmd_usr_buf = buffer;
 if((ret=__card_sectorerase(file->chn,(file->iblock*card->sector_size),__erase_callback))>=0) return ret;
 __card_putcntrlblock(card,ret);
 return ret;
}
