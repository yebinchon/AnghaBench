
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * __ARQMStackPointer ;

u32 ARQM_GetZeroBuffer()
{
 return __ARQMStackPointer[0];
}
