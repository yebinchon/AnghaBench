
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int btmemb_free (int *,void*) ;
 int ctrlbufs ;

__attribute__((used)) static s32 __writectrlmsgCB(s32 result,void *usrdata)
{
 if(usrdata!=((void*)0)) btmemb_free(&ctrlbufs,usrdata);
 return result;
}
