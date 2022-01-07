
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct card_direntry {int permission; } ;
typedef int s32 ;
typedef int cardcallback ;


 int __card_getstatusex (int ,int ,struct card_direntry*) ;
 int __card_setstatusexasync (int ,int ,struct card_direntry*,int ) ;

s32 CARD_SetAttributesAsync(s32 chn,s32 fileno,u8 attr,cardcallback callback)
{
 s32 ret;
 struct card_direntry entry;

 if((ret=__card_getstatusex(chn,fileno,&entry))>=0) {
  entry.permission = attr;
  ret = __card_setstatusexasync(chn,fileno,&entry,callback);
 }
 return ret;
}
