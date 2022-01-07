
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int Atari800_Coldstart () ;
 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ BINLOAD_LOADING_BASIC_LISTED ;
 scalar_t__ BINLOAD_LOADING_BASIC_SAVED ;
 int * BINLOAD_bin_file ;
 scalar_t__ BINLOAD_loading_basic ;
 int BINLOAD_start_binloading ;
 int ESC_UpdatePatches () ;
 int FALSE ;
 int Log_print (char*,...) ;
 int SIO_DisableDrive (int) ;
 scalar_t__ SIO_NO_DISK ;
 scalar_t__* SIO_drive_status ;
 int TRUE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int*,int,int,int *) ;

int BINLOAD_Loader(const char *filename)
{
 UBYTE buf[2];
 if (BINLOAD_bin_file != ((void*)0)) {
  fclose(BINLOAD_bin_file);
  BINLOAD_bin_file = ((void*)0);
  BINLOAD_loading_basic = 0;
 }
 if (Atari800_machine_type == Atari800_MACHINE_5200) {
  Log_print("binload: can't run Atari programs directly on the 5200");
  return FALSE;
 }
 BINLOAD_bin_file = fopen(filename, "rb");
 if (BINLOAD_bin_file == ((void*)0)) {
  Log_print("binload: can't open \"%s\"", filename);
  return FALSE;
 }

 if (SIO_drive_status[0] == SIO_NO_DISK)
  SIO_DisableDrive(1);
 if (fread(buf, 1, 2, BINLOAD_bin_file) == 2) {
  if (buf[0] == 0xff && buf[1] == 0xff) {
   BINLOAD_start_binloading = TRUE;
   Atari800_Coldstart();
   return TRUE;
  }
  else if (buf[0] == 0 && buf[1] == 0) {
   BINLOAD_loading_basic = BINLOAD_LOADING_BASIC_SAVED;
   ESC_UpdatePatches();
   Atari800_Coldstart();
   return TRUE;
  }
  else if (buf[0] >= '0' && buf[0] <= '9') {
   BINLOAD_loading_basic = BINLOAD_LOADING_BASIC_LISTED;
   ESC_UpdatePatches();
   Atari800_Coldstart();
   return TRUE;
  }
 }
 fclose(BINLOAD_bin_file);
 BINLOAD_bin_file = ((void*)0);
 Log_print("binload: \"%s\" not recognized as a DOS or BASIC program", filename);
 return FALSE;
}
