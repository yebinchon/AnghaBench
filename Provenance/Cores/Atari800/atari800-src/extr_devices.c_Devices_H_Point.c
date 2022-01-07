
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 scalar_t__ Devices_ICAX3 ;
 scalar_t__ Devices_ICAX4 ;
 scalar_t__ Devices_ICAX5 ;
 size_t Devices_IOCB0 ;
 int Log_print (char*) ;
 int MEMORY_dGetByte (scalar_t__) ;
 int SEEK_SET ;
 scalar_t__ devbug ;
 scalar_t__ fseek (int *,long,int ) ;
 int ** h_fp ;
 size_t h_iocb ;
 char* h_lastop ;

__attribute__((used)) static void Devices_H_Point(void)
{
 if (devbug)
  Log_print("POINT Command");
 if (!Devices_GetIOCB())
  return;
 if (h_fp[h_iocb] != ((void*)0)) {
  int iocb = Devices_IOCB0 + h_iocb * 16;
  long pos = (MEMORY_dGetByte(iocb + Devices_ICAX4) << 16) +
   (MEMORY_dGetByte(iocb + Devices_ICAX3) << 8) + (MEMORY_dGetByte(iocb + Devices_ICAX5));
  if (fseek(h_fp[h_iocb], pos, SEEK_SET) == 0) {
   CPU_regY = 1;
   CPU_ClrN;
  }
  else {
   CPU_regY = 166;
   CPU_SetN;
  }
  h_lastop[h_iocb] = 'p';
 }
 else {
  CPU_regY = 130;
  CPU_SetN;
 }
}
