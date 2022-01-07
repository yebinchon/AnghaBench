
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int BTE_ApplyPatch (int ) ;
 int ERR_OK ;
 int __wpad_patch_finished ;
 int __wpads_ponded ;

__attribute__((used)) static s32 __readlinkkey_finished(s32 result,void *usrdata)
{


 __wpads_ponded = result;
 BTE_ApplyPatch(__wpad_patch_finished);

 return ERR_OK;
}
