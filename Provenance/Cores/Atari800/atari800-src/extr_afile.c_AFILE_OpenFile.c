
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFILE_DetectFileType (char const*) ;
 int AFILE_ERROR ;
 int Atari800_Coldstart () ;
 int BINLOAD_Loader (char const*) ;



 int CARTRIDGE_Insert (char const*) ;
 int CARTRIDGE_InsertAutoReboot (char const*) ;
 int CARTRIDGE_SetTypeAutoReboot (int *,int ) ;
 int CARTRIDGE_main ;
 int CASSETTE_Insert (char const*) ;
 int CASSETTE_hold_start ;
 int GTIA_consol_override ;
 int Log_print (char*) ;
 int SIO_Mount (int,char const*,int) ;
 int StateSav_ReadAtariState (char const*,char*) ;
 int TRUE ;
 int UI_SelectCartType (int) ;

int AFILE_OpenFile(const char *filename, int reboot, int diskno, int readonly)
{
 int type = AFILE_DetectFileType(filename);
 switch (type) {
 case 146:
 case 144:
 case 132:
 case 145:
 case 131:
 case 139:
 case 137:
  if (!SIO_Mount(diskno, filename, readonly))
   return AFILE_ERROR;
  if (reboot)
   Atari800_Coldstart();
  break;
 case 133:
 case 143:
 case 138:
  if (!BINLOAD_Loader(filename))
   return AFILE_ERROR;
  break;
 case 141:
 case 136:
  {
   int r;
   if (reboot)
    r = CARTRIDGE_InsertAutoReboot(filename);
   else
    r = CARTRIDGE_Insert(filename);
   switch (r) {
   case 128:
   case 129:
    return AFILE_ERROR;
   case 130:
   case 0:

    break;
   default:






    CARTRIDGE_SetTypeAutoReboot(&CARTRIDGE_main, UI_SelectCartType(r));



    break;

   }
  }
  break;
 case 140:
 case 142:
  if (!CASSETTE_Insert(filename))
   return AFILE_ERROR;
  if (reboot) {
   CASSETTE_hold_start = TRUE;
   Atari800_Coldstart();
  }
  break;
 case 135:
 case 134:




  if (!StateSav_ReadAtariState(filename, "rb"))
   return AFILE_ERROR;

  GTIA_consol_override = 0;
  break;

 default:
  break;
 }
 return type;
}
