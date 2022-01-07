
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regA ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 int Log_print (char*) ;
 int SEEK_CUR ;
 scalar_t__ devbug ;
 int fputc (int,int *) ;
 int fseek (int *,int ,int ) ;
 int ** h_fp ;
 size_t h_iocb ;
 char* h_lastop ;
 scalar_t__* h_textmode ;

__attribute__((used)) static void Devices_H_Write(void)
{
 if (devbug)
  Log_print("HHWRIT");
 if (!Devices_GetIOCB())
  return;
 if (h_fp[h_iocb] != ((void*)0)) {
  int ch;
  if (h_lastop[h_iocb] == 'r')
   fseek(h_fp[h_iocb], 0, SEEK_CUR);
  h_lastop[h_iocb] = 'w';
  ch = CPU_regA;
  if (ch == 0x9b && h_textmode[h_iocb])
   ch = '\n';
  fputc(ch, h_fp[h_iocb]);
  CPU_regY = 1;
  CPU_ClrN;
 }
 else {
  CPU_regY = 135;

  CPU_SetN;
 }
}
