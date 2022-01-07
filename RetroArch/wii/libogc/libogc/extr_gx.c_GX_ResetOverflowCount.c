
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ _gxoverflowcount ;

u32 GX_ResetOverflowCount()
{
 u32 ret = _gxoverflowcount;
 _gxoverflowcount = 0;
 return ret;
}
