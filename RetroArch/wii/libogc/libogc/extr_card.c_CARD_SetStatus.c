
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int card_stat ;


 int CARD_SetStatusAsync (int ,int ,int *,int ) ;
 int __card_sync (int ) ;
 int __card_synccallback ;

s32 CARD_SetStatus(s32 chn,s32 fileno,card_stat *stats)
{
 s32 ret;

 if((ret=CARD_SetStatusAsync(chn,fileno,stats,__card_synccallback))>=0) {
  ret = __card_sync(chn);
 }
 return ret;
}
