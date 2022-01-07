
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SetN ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 int Devices_ICDNOZ ;
 int FALSE ;
 int MEMORY_dGetByte (int ) ;
 int TRUE ;
 size_t h_iocb ;
 int * h_textmode ;

__attribute__((used)) static int Devices_GetNumber(int set_textmode)
{
 int devnum;
 if (!Devices_GetIOCB())
  return -1;
 devnum = MEMORY_dGetByte(Devices_ICDNOZ);
 if (devnum > 9 || devnum == 0 || devnum == 5) {
  CPU_regY = 160;
  CPU_SetN;
  return -1;
 }
 if (devnum < 5) {
  if (set_textmode)
   h_textmode[h_iocb] = FALSE;
  return devnum - 1;
 }
 if (set_textmode)
  h_textmode[h_iocb] = TRUE;
 return devnum - 6;
}
