
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int CPU_ClrN ;
 int CPU_SetN ;
 scalar_t__ CPU_regA ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 int EOF ;
 int FALSE ;
 int Log_print (char*) ;
 int SEEK_CUR ;
 int TRUE ;
 scalar_t__ devbug ;
 scalar_t__ feof (int *) ;
 void* fgetc (int *) ;
 int fseek (int *,int ,int ) ;
 int ** h_fp ;
 size_t h_iocb ;
 int* h_lastbyte ;
 char* h_lastop ;
 scalar_t__* h_textmode ;
 int * h_wascr ;

__attribute__((used)) static void Devices_H_Read(void)
{
 if (devbug)
  Log_print("HHREAD");
 if (!Devices_GetIOCB())
  return;
 if (h_fp[h_iocb] != ((void*)0)) {
  int ch;
  if (h_lastop[h_iocb] != 'r') {
   if (h_lastop[h_iocb] == 'w')
    fseek(h_fp[h_iocb], 0, SEEK_CUR);
   h_lastbyte[h_iocb] = fgetc(h_fp[h_iocb]);
   h_lastop[h_iocb] = 'r';
  }
  ch = h_lastbyte[h_iocb];
  if (ch != EOF) {
   if (h_textmode[h_iocb]) {
    switch (ch) {
    case 0x0d:
     h_wascr[h_iocb] = TRUE;
     ch = 0x9b;
     break;
    case 0x0a:
     if (h_wascr[h_iocb]) {

      ch = fgetc(h_fp[h_iocb]);
      if (ch != EOF) {
       if (ch == 0x0d) {
        h_wascr[h_iocb] = TRUE;
        ch = 0x9b;
       }
       else
        h_wascr[h_iocb] = FALSE;
      }
      else {
       CPU_regY = 136;
       CPU_SetN;
       break;
      }
     }
     else
      ch = 0x9b;
     break;
    default:
     h_wascr[h_iocb] = FALSE;
     break;
    }
   }
   CPU_regA = (UBYTE) ch;


   h_lastbyte[h_iocb] = fgetc(h_fp[h_iocb]);
   CPU_regY = feof(h_fp[h_iocb]) ? 3 : 1;
   CPU_ClrN;
  }
  else {
   CPU_regY = 136;
   CPU_SetN;
  }
 }
 else {
  CPU_regY = 136;
  CPU_SetN;
 }
}
