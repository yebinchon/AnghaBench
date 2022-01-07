
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ BINLOAD_start_binloading ;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regPC ;
 int CPU_regY ;
 scalar_t__ FALSE ;
 int Log_print (char*) ;
 int MEMORY_dGetWordAligned (int) ;
 int * binf ;
 int fclose (int *) ;
 int fread (int*,int,int,int *) ;
 scalar_t__ runBinFile ;

__attribute__((used)) static int Devices_H_BinReadWord(void)
{
 UBYTE buf[2];
 if (fread(buf, 1, 2, binf) != 2) {
  fclose(binf);
  binf = ((void*)0);
  if (BINLOAD_start_binloading) {
   BINLOAD_start_binloading = FALSE;
   Log_print("binload: not valid BIN file");
   CPU_regY = 180;
   CPU_SetN;
   return -1;
  }
  if (runBinFile)
   CPU_regPC = MEMORY_dGetWordAligned(0x2e0);
  CPU_regY = 1;
  CPU_ClrN;
  return -1;
 }
 return buf[0] + (buf[1] << 8);
}
