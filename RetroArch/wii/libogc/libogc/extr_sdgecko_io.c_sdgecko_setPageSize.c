
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int __card_setblocklen (size_t,int) ;
 int* _ioPageSize ;

u32 sdgecko_setPageSize(s32 drv_no, int size)
{
 if(_ioPageSize[drv_no]!=size)
  _ioPageSize[drv_no] = size;

 return __card_setblocklen(drv_no, _ioPageSize[drv_no]);
}
