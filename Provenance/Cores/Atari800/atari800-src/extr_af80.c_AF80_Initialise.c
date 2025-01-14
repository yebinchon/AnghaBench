
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int AF80_Reset () ;
 int AF80_enabled ;
 int * AF80_palette ;
 int Atari800_LoadImage (int ,int *,int) ;
 int FALSE ;
 int Log_print (char*) ;
 int TRUE ;
 scalar_t__ Util_malloc (int) ;
 int * af80_attrib ;
 int * af80_charset ;
 int af80_charset_filename ;
 int * af80_rom ;
 int af80_rom_filename ;
 int * af80_screen ;
 int free (int *) ;
 int * rgbi_palette ;
 scalar_t__ strcmp (char*,char*) ;

int AF80_Initialise(int *argc, char *argv[])
{
 int i, j;
 int help_only = FALSE;
 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-af80") == 0) {
   AF80_enabled = TRUE;
  }
  else {
    if (strcmp(argv[i], "-help") == 0) {
     help_only = TRUE;
    Log_print("\t-af80            Emulate the Austin Franklin 80 column board");
   }
   argv[j++] = argv[i];
  }
 }
 *argc = j;

 if (help_only)
  return TRUE;

 if (AF80_enabled) {
  Log_print("Austin Franklin 80 enabled");
  af80_rom = (UBYTE *)Util_malloc(0x1000);
  if (!Atari800_LoadImage(af80_rom_filename, af80_rom, 0x1000)) {
   free(af80_rom);
   af80_rom = ((void*)0);
   AF80_enabled = FALSE;
   Log_print("Couldn't load Austin Franklin ROM image");
   return FALSE;
  }
  else {
   Log_print("loaded Austin Franklin rom image");
  }
  af80_charset = (UBYTE *)Util_malloc(0x1000);
  if (!Atari800_LoadImage(af80_charset_filename, af80_charset, 0x1000)) {
   free(af80_charset);
   free(af80_rom);
   af80_charset = af80_rom = ((void*)0);
   AF80_enabled = FALSE;
   Log_print("Couldn't load Austin Franklin charset image");
   return FALSE;
  }
  else {
   Log_print("loaded Austin Franklin charset image");
  }
  af80_screen = (UBYTE *)Util_malloc(0x800);
  af80_attrib = (UBYTE *)Util_malloc(0x800);
  AF80_Reset();


  for (i=0; i<16; i++ ) {
   j=i;
   j = (j&0x0a) + ((j&0x01) << 2) + ((j&0x04) >> 2);
   AF80_palette[i] = rgbi_palette[j];
  }
 }

 return TRUE;
}
