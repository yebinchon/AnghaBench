
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int cardcallback ;


 int CARD_MountAsync (int ,void*,int ,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_Mount(s32 chn,void *workarea,cardcallback detach_cb)
{
 s32 ret;
 if((ret=CARD_MountAsync(chn,workarea,detach_cb,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
