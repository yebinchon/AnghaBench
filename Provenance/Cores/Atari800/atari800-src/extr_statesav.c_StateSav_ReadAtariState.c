
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_StateRead () ;
 int Atari800_StateRead (int) ;
 int CARTRIDGE_StateRead (int) ;
 int CPU_StateRead (int,int) ;
 int DCStateRead () ;
 int FALSE ;
 int GTIA_StateRead (int) ;
 int GZCLOSE (int *) ;
 int * GZOPEN (char const*,char const*) ;
 scalar_t__ GZREAD (int *,...) ;
 int GetGZErrorText () ;
 int Log_print (char*,...) ;
 int PBI_BB_StateRead () ;
 int PBI_MIO_StateRead () ;
 int PBI_StateRead () ;
 int PBI_XLD_StateRead () ;
 int PIA_StateRead (int) ;
 int POKEY_StateRead () ;
 int SAVE_VERSION_NUMBER ;
 int SIO_StateRead () ;
 int * StateFile ;
 int StateSav_ReadINT (int*,int) ;
 int TRUE ;
 int XEP80_StateRead () ;
 scalar_t__ Z_OK ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ nFileError ;

int StateSav_ReadAtariState(const char *filename, const char *mode)
{
 char header_string[8];
 UBYTE StateVersion = 0;
 UBYTE SaveVerbose = 0;

 if (StateFile != ((void*)0)) {
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
 }
 nFileError = Z_OK;

 StateFile = GZOPEN(filename, mode);
 if (StateFile == ((void*)0)) {
  Log_print("Could not open %s for state read.", filename);
  GetGZErrorText();
  return FALSE;
 }

 if (GZREAD(StateFile, header_string, 8) == 0) {
  GetGZErrorText();
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
  return FALSE;
 }
 if (memcmp(header_string, "ATARI800", 8) != 0) {
  Log_print("This is not an Atari800 state save file.");
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
  return FALSE;
 }

 if (GZREAD(StateFile, &StateVersion, 1) == 0
  || GZREAD(StateFile, &SaveVerbose, 1) == 0) {
  Log_print("Failed read from Atari state file.");
  GetGZErrorText();
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
  return FALSE;
 }

 if (StateVersion > SAVE_VERSION_NUMBER || StateVersion < 3) {
  Log_print("Cannot read this state file because it is an incompatible version.");
  GZCLOSE(StateFile);
  StateFile = ((void*)0);
  return FALSE;
 }

 Atari800_StateRead(StateVersion);
 if (StateVersion >= 4) {
  CARTRIDGE_StateRead(StateVersion);
  SIO_StateRead();
 }
 ANTIC_StateRead();
 CPU_StateRead(SaveVerbose, StateVersion);
 GTIA_StateRead(StateVersion);
 PIA_StateRead(StateVersion);
 POKEY_StateRead();
 if (StateVersion >= 6) {



  int local_xep80_enabled;
  StateSav_ReadINT(&local_xep80_enabled,1);
  if (local_xep80_enabled) {
   Log_print("Cannot read this state file because this version does not support XEP80.");
   GZCLOSE(StateFile);
   StateFile = ((void*)0);
   return FALSE;
  }

  PBI_StateRead();



  {
   int local_mio_enabled;
   StateSav_ReadINT(&local_mio_enabled,1);
   if (local_mio_enabled) {
    Log_print("Cannot read this state file because this version does not support MIO.");
    GZCLOSE(StateFile);
    StateFile = ((void*)0);
    return FALSE;
   }
  }




  {
   int local_bb_enabled;
   StateSav_ReadINT(&local_bb_enabled,1);
   if (local_bb_enabled) {
    Log_print("Cannot read this state file because this version does not support the Black Box.");
    GZCLOSE(StateFile);
    StateFile = ((void*)0);
    return FALSE;
   }
  }




  {
   int local_xld_enabled;
   StateSav_ReadINT(&local_xld_enabled,1);
   if (local_xld_enabled) {
    Log_print("Cannot read this state file because this version does not support the 1400XL/1450XLD.");
    GZCLOSE(StateFile);
    StateFile = ((void*)0);
    return FALSE;
   }
  }

 }




 GZCLOSE(StateFile);
 StateFile = ((void*)0);

 if (nFileError != Z_OK)
  return FALSE;

 return TRUE;
}
