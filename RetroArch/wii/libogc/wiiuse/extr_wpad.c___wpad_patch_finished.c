
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int BTE_InitSub (int ) ;
 int ERR_OK ;
 int __wpad_init_finished ;

__attribute__((used)) static s32 __wpad_patch_finished(s32 result,void *usrdata)
{

 BTE_InitSub(__wpad_init_finished);
 return ERR_OK;
}
