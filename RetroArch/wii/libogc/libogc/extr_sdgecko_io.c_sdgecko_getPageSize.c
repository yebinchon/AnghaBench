
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int * _ioPageSize ;

u32 sdgecko_getPageSize(s32 drv_no)
{
 return _ioPageSize[drv_no];
}
