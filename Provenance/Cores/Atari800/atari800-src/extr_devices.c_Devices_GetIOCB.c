
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SetN ;
 int CPU_regX ;
 int CPU_regY ;
 int FALSE ;
 int TRUE ;
 int h_iocb ;

__attribute__((used)) static int Devices_GetIOCB(void)
{
 if ((CPU_regX & 0x8f) != 0) {
  CPU_regY = 134;
  CPU_SetN;
  return FALSE;
 }
 h_iocb = CPU_regX >> 4;
 return TRUE;
}
