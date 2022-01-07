
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int * _ioAddressingType ;

u32 sdgecko_getAddressingType(s32 drv_no)
{
 return _ioAddressingType[drv_no];
}
