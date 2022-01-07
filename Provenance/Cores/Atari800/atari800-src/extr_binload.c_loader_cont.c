
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;
typedef int UBYTE ;


 int * BINLOAD_bin_file ;
 scalar_t__ BINLOAD_start_binloading ;
 int CPU_SetC ;
 int CPU_regPC ;
 int CPU_regS ;
 int EOF ;
 int ESC_Add (scalar_t__,int ,void (*) ()) ;
 int ESC_BINLOADER_CONT ;
 scalar_t__ FALSE ;
 int MEMORY_PutByte (scalar_t__,int ) ;
 int MEMORY_dGetByte (int) ;
 int MEMORY_dGetWordAligned (int) ;
 int MEMORY_dPutByte (int,int) ;
 int MEMORY_dPutWordAligned (int,scalar_t__) ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int read_word () ;

__attribute__((used)) static void loader_cont(void)
{
 if (BINLOAD_bin_file == ((void*)0))
  return;
 if (BINLOAD_start_binloading) {
  MEMORY_dPutByte(0x244, 0);
  MEMORY_dPutByte(0x09, 1);
 }
 else
  CPU_regS += 2;

 MEMORY_dPutByte(0x2e3, 0xd7);
 do {
  int temp;
  UWORD from;
  UWORD to;
  do
   temp = read_word();
  while (temp == 0xffff);
  if (temp < 0)
   return;
  from = (UWORD) temp;

  temp = read_word();
  if (temp < 0)
   return;
  to = (UWORD) temp;

  if (BINLOAD_start_binloading) {
   MEMORY_dPutWordAligned(0x2e0, from);
   BINLOAD_start_binloading = FALSE;
  }

  to++;
  do {
   int byte = fgetc(BINLOAD_bin_file);
   if (byte == EOF) {
    fclose(BINLOAD_bin_file);
    BINLOAD_bin_file = ((void*)0);
    CPU_regPC = MEMORY_dGetWordAligned(0x2e0);
    if (MEMORY_dGetByte(0x2e3) != 0xd7) {

     CPU_regPC--;
     MEMORY_dPutByte(0x0100 + CPU_regS--, CPU_regPC >> 8);
     MEMORY_dPutByte(0x0100 + CPU_regS--, CPU_regPC & 0xff);
     CPU_regPC = MEMORY_dGetWordAligned(0x2e2);
    }
    return;
   }
   MEMORY_PutByte(from, (UBYTE) byte);
   from++;
  } while (from != to);
 } while (MEMORY_dGetByte(0x2e3) == 0xd7);

 CPU_regS--;
 ESC_Add((UWORD) (0x100 + CPU_regS), ESC_BINLOADER_CONT, loader_cont);
 CPU_regS--;
 MEMORY_dPutByte(0x0100 + CPU_regS--, 0x01);
 MEMORY_dPutByte(0x0100 + CPU_regS, CPU_regS + 1);
 CPU_regS--;
 CPU_regPC = MEMORY_dGetWordAligned(0x2e2);
 CPU_SetC;

 MEMORY_dPutByte(0x0300, 0x31);
}
