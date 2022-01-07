
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int UBYTE ;
typedef int FILE ;


 int CPU_ClrN ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 int Devices_H_Load (int ) ;
 int Devices_H_LoadProceed (int ) ;
 scalar_t__ Devices_ICAX3 ;
 scalar_t__ Devices_ICAX4 ;
 scalar_t__ Devices_ICAX5 ;
 size_t Devices_IOCB0 ;
 scalar_t__ EOF ;
 int Log_print (char*) ;
 char MEMORY_dGetByte (int) ;
 int MEMORY_dPutByte (scalar_t__,int ) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int TRUE ;
 int Util_flen (int *) ;
 int * binf ;
 scalar_t__ devbug ;
 int fileno (int *) ;
 int fseek (int *,long,int ) ;
 int fstat (int ,struct stat*) ;
 long ftell (int *) ;
 int ** h_fp ;
 size_t h_iocb ;
 scalar_t__* h_lastbyte ;
 char* h_lastop ;

__attribute__((used)) static void Devices_H_FileLength(void)
{
 if (devbug)
  Log_print("Get File Length Command");
 if (!Devices_GetIOCB())
  return;

 if (h_fp[h_iocb] == ((void*)0))
  Devices_H_Load(TRUE);

 else if (MEMORY_dGetByte(0x700) == 'M') {



  if (h_lastop[h_iocb] == 'r' && h_lastbyte[h_iocb] != EOF)
   fseek(h_fp[h_iocb], -1, SEEK_CUR);

  binf = h_fp[h_iocb];
  Devices_H_LoadProceed(TRUE);

  h_lastop[h_iocb] = 'b';
 }

 else {
  int iocb = Devices_IOCB0 + h_iocb * 16;
  int filesize;






  FILE *fp = h_fp[h_iocb];
  long currentpos = ftell(fp);
  filesize = Util_flen(fp);
  fseek(fp, currentpos, SEEK_SET);

  MEMORY_dPutByte(iocb + Devices_ICAX3, (UBYTE) filesize);
  MEMORY_dPutByte(iocb + Devices_ICAX4, (UBYTE) (filesize >> 8));
  MEMORY_dPutByte(iocb + Devices_ICAX5, (UBYTE) (filesize >> 16));
  CPU_regY = 1;
  CPU_ClrN;
 }
}
