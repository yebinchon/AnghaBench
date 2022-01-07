
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int * BINLOAD_bin_file ;
 scalar_t__ BINLOAD_start_binloading ;
 int CPU_regPC ;
 scalar_t__ FALSE ;
 int Log_print (char*) ;
 int MEMORY_dGetWordAligned (int) ;
 int fclose (int *) ;
 int fread (int*,int,int,int *) ;

__attribute__((used)) static int read_word(void)
{
 UBYTE buf[2];
 if (fread(buf, 1, 2, BINLOAD_bin_file) != 2) {
  fclose(BINLOAD_bin_file);
  BINLOAD_bin_file = ((void*)0);
  if (BINLOAD_start_binloading) {
   BINLOAD_start_binloading = FALSE;
   Log_print("binload: not valid BIN file");
   return -1;
  }
  CPU_regPC = MEMORY_dGetWordAligned(0x2e0);
  return -1;
 }
 return buf[0] + (buf[1] << 8);
}
