
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_StateSave () ;
 int Atari800_StateSave () ;
 int CARTRIDGE_StateSave () ;
 int CPU_StateSave (int ) ;
 int DCStateSave () ;
 int FALSE ;
 int GTIA_StateSave () ;
 scalar_t__ GZCLOSE (int *) ;
 int * GZOPEN (char const*,char const*) ;
 scalar_t__ GZWRITE (int *,char*,int) ;
 int GetGZErrorText () ;
 int Log_print (char*,char const*) ;
 int PBI_BB_StateSave () ;
 int PBI_MIO_StateSave () ;
 int PBI_StateSave () ;
 int PBI_XLD_StateSave () ;
 int PIA_StateSave () ;
 int POKEY_StateSave () ;
 int SAVE_VERSION_NUMBER ;
 int SIO_StateSave () ;
 int * StateFile ;
 int StateSav_SaveINT (int*,int) ;
 int StateSav_SaveUBYTE (int *,int) ;
 int TRUE ;
 int XEP80_StateSave () ;
 scalar_t__ Z_OK ;
 scalar_t__ nFileError ;

int StateSav_SaveAtariState(const char *filename, const char *mode, UBYTE SaveVerbose)
{
 UBYTE StateVersion = SAVE_VERSION_NUMBER;

 if (StateFile != ((void*)0)) {
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
 }
 nFileError = Z_OK;

 StateFile = GZOPEN(filename, mode);
 if (StateFile == ((void*)0)) {
  Log_print("Could not open %s for state save.", filename);
  GetGZErrorText();
  return FALSE;
 }
 if (GZWRITE(StateFile, "ATARI800", 8) == 0) {
  GetGZErrorText();
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
  return FALSE;
 }

 StateSav_SaveUBYTE(&StateVersion, 1);
 StateSav_SaveUBYTE(&SaveVerbose, 1);


 Atari800_StateSave();
 CARTRIDGE_StateSave();
 SIO_StateSave();
 ANTIC_StateSave();
 CPU_StateSave(SaveVerbose);
 GTIA_StateSave();
 PIA_StateSave();
 POKEY_StateSave();



 {
  int local_xep80_enabled = FALSE;
  StateSav_SaveINT(&local_xep80_enabled, 1);
 }

 PBI_StateSave();



 {
  int local_mio_enabled = FALSE;
  StateSav_SaveINT(&local_mio_enabled, 1);
 }




 {
  int local_bb_enabled = FALSE;
  StateSav_SaveINT(&local_bb_enabled, 1);
 }




 {
  int local_xld_enabled = FALSE;
  StateSav_SaveINT(&local_xld_enabled, 1);
 }





 if (GZCLOSE(StateFile) != 0) {
  StateFile = ((void*)0);
  return FALSE;
 }
 StateFile = ((void*)0);

 if (nFileError != Z_OK)
  return FALSE;

 return TRUE;
}
