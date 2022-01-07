
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct card_direntry {int permission; } ;
typedef int s32 ;


 int CARD_ERROR_READY ;
 int __card_getstatusex (int ,int ,struct card_direntry*) ;

s32 CARD_GetAttributes(s32 chn,s32 fileno,u8 *attr)
{
 s32 ret;
 struct card_direntry entry;

 if((ret=__card_getstatusex(chn,fileno,&entry))==CARD_ERROR_READY) {
  *attr = entry.permission;
 }
 return ret;
}
