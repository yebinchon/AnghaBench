
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int BTE_ReadStoredLinkKey (int ,int ,int ) ;
 scalar_t__ ERR_OK ;
 int WPAD_MAX_WIIMOTES ;
 int __readlinkkey_finished ;
 int __wpad_keys ;

__attribute__((used)) static s32 __initcore_finished(s32 result,void *usrdata)
{


 if(result==ERR_OK) {
  BTE_ReadStoredLinkKey(__wpad_keys,WPAD_MAX_WIIMOTES,__readlinkkey_finished);
 }
 return ERR_OK;
}
