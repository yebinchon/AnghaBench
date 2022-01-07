
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int Atari800_LoadImage (int ,int *,int) ;
 int FALSE ;
 int Log_print (char*) ;
 int PBI_D6D7ram ;
 int PBI_PROTO80_enabled ;
 int TRUE ;
 scalar_t__ Util_malloc (int) ;
 int free (int *) ;
 int proto80_rom_filename ;
 int * proto80rom ;
 scalar_t__ strcmp (char*,char*) ;

int PBI_PROTO80_Initialise(int *argc, char *argv[])
{
 int i, j;
 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-proto80") == 0) {
   Log_print("proto80 enabled");
   PBI_PROTO80_enabled = TRUE;
  }
  else {
    if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-proto80         Emulate a prototype 80 column board for the 1090");
   }
   argv[j++] = argv[i];
  }
 }
 *argc = j;

 if (PBI_PROTO80_enabled) {
  proto80rom = (UBYTE *)Util_malloc(0x800);
  if (!Atari800_LoadImage(proto80_rom_filename, proto80rom, 0x800)) {
   free(proto80rom);
   PBI_PROTO80_enabled = FALSE;
   Log_print("Couldn't load proto80 rom image");
   return FALSE;
  }
  else {
   Log_print("loaded proto80 rom image");
   PBI_D6D7ram = TRUE;
  }
 }

 return TRUE;
}
