
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* _piReg ;

u32 SYS_ResetButtonDown()
{
 return (!(_piReg[0]&0x00010000));
}
