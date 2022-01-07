
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;
typedef int UBYTE ;


 scalar_t__ BINLOAD_start_binloading ;
 int CPU_SetC ;
 int CPU_regPC ;
 int CPU_regS ;
 int Devices_H_BinReadWord () ;
 int EOF ;
 int ESC_Add (scalar_t__,int ,void (*) ()) ;
 int ESC_BINLOADER_CONT ;
 scalar_t__ FALSE ;
 int Log_print (char*,scalar_t__,scalar_t__) ;
 int MEMORY_PutByte (scalar_t__,int ) ;
 int MEMORY_dGetByte (int) ;
 int MEMORY_dGetWordAligned (int) ;
 int MEMORY_dPutByte (int,int) ;
 int MEMORY_dPutWordAligned (int,scalar_t__) ;
 int * binf ;
 scalar_t__ devbug ;
 int fclose (int *) ;
 int fgetc (int *) ;
 scalar_t__ initBinFile ;
 scalar_t__ runBinFile ;

__attribute__((used)) static void Devices_H_BinLoaderCont(void)
{
 if (binf == ((void*)0))
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
   temp = Devices_H_BinReadWord();
  while (temp == 0xffff);
  if (temp < 0)
   return;
  from = (UWORD) temp;

  temp = Devices_H_BinReadWord();
  if (temp < 0)
   return;
  to = (UWORD) temp;

  if (devbug)
   Log_print("H: Load: From %04X to %04X", from, to);

  if (BINLOAD_start_binloading) {
   if (runBinFile)
    MEMORY_dPutWordAligned(0x2e0, from);
   BINLOAD_start_binloading = FALSE;
  }

  to++;
  do {
   int byte = fgetc(binf);
   if (byte == EOF) {
    fclose(binf);
    binf = ((void*)0);
    if (runBinFile)
     CPU_regPC = MEMORY_dGetWordAligned(0x2e0);
    if (initBinFile && (MEMORY_dGetByte(0x2e3) != 0xd7)) {

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
 } while (!initBinFile || MEMORY_dGetByte(0x2e3) == 0xd7);

 CPU_regS--;
 ESC_Add((UWORD) (0x100 + CPU_regS), ESC_BINLOADER_CONT, Devices_H_BinLoaderCont);
 CPU_regS--;
 MEMORY_dPutByte(0x0100 + CPU_regS--, 0x01);
 MEMORY_dPutByte(0x0100 + CPU_regS, CPU_regS + 1);
 CPU_regS--;
 CPU_regPC = MEMORY_dGetWordAligned(0x2e2);
 CPU_SetC;

 MEMORY_dPutByte(0x0300, 0x31);
}
