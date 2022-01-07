
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __VIWriteI2CRegister8 (int,int) ;

void VIDEO_SetTrapFilter(bool enable)
{
   __VIWriteI2CRegister8(0x03,enable);
}
