
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;
 int * BINLOAD_bin_file ;
 int BINLOAD_loading_basic ;
 int CPU_ClrN ;
 int CPU_SetN ;
 scalar_t__ CPU_regA ;
 int CPU_regY ;
 int EOF ;
 int fgetc (int *) ;

__attribute__((used)) static void Devices_ReadBasicFile(void)
{
 if (BINLOAD_bin_file != ((void*)0)) {
  int ch = fgetc(BINLOAD_bin_file);
  if (ch == EOF) {
   CPU_regY = 136;
   CPU_SetN;
   return;
  }
  switch (BINLOAD_loading_basic) {
  case 134:
   switch (ch) {
   case 0x9b:
    BINLOAD_loading_basic = 133;
    break;
   case 0x0a:
    BINLOAD_loading_basic = 129;
    ch = 0x9b;
    break;
   case 0x0d:
    BINLOAD_loading_basic = 130;
    ch = 0x9b;
    break;
   default:
    break;
   }
   break;
  case 132:
   if (ch == 0x0d)
    ch = 0x9b;
   break;
  case 129:
   if (ch == 0x0a)
    ch = 0x9b;
   break;
  case 131:
   if (ch == 0x0a) {
    ch = fgetc(BINLOAD_bin_file);
    if (ch == EOF) {
     CPU_regY = 136;
     CPU_SetN;
     return;
    }
   }
   if (ch == 0x0d)
    ch = 0x9b;
   break;
  case 130:
   if (ch == 0x0a) {
    BINLOAD_loading_basic = 131;
    ch = fgetc(BINLOAD_bin_file);
    if (ch == EOF) {
     CPU_regY = 136;
     CPU_SetN;
     return;
    }
   }
   else
    BINLOAD_loading_basic = 132;
   if (ch == 0x0d)
    ch = 0x9b;
   break;
  case 128:
  case 133:
  default:
   break;
  }
  CPU_regA = (UBYTE) ch;
  CPU_regY = 1;
  CPU_ClrN;
 }
}
