
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int filename; } ;
struct TYPE_3__ {int type; int filename; } ;


 int CARTRIDGE_LAST_SUPPORTED ;
 int CARTRIDGE_NONE ;
 void* CARTRIDGE_UNKNOWN ;
 int CARTRIDGE_autoreboot ;
 TYPE_2__ CARTRIDGE_main ;
 TYPE_1__ CARTRIDGE_piggyback ;
 int FALSE ;
 int TRUE ;
 int Util_sscanbool (char*) ;
 int Util_sscandec (char*) ;
 int Util_strlcpy (int ,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int CARTRIDGE_ReadConfig(char *string, char *ptr)
{
 if (strcmp(string, "CARTRIDGE_FILENAME") == 0) {
  Util_strlcpy(CARTRIDGE_main.filename, ptr, sizeof(CARTRIDGE_main.filename));
  if (CARTRIDGE_main.type == CARTRIDGE_NONE)
   CARTRIDGE_main.type = CARTRIDGE_UNKNOWN;
 }
 else if (strcmp(string, "CARTRIDGE_TYPE") == 0) {
  int value = Util_sscandec(ptr);
  if (value < 0 || value > CARTRIDGE_LAST_SUPPORTED)
   return FALSE;
  CARTRIDGE_main.type = value;
 }
 else if (strcmp(string, "CARTRIDGE_PIGGYBACK_FILENAME") == 0) {
  Util_strlcpy(CARTRIDGE_piggyback.filename, ptr, sizeof(CARTRIDGE_piggyback.filename));
  if (CARTRIDGE_piggyback.type == CARTRIDGE_NONE)
   CARTRIDGE_piggyback.type = CARTRIDGE_UNKNOWN;
 }
 else if (strcmp(string, "CARTRIDGE_PIGGYBACK_TYPE") == 0) {
  int value = Util_sscandec(ptr);
  if (value < 0 || value > CARTRIDGE_LAST_SUPPORTED)
   return FALSE;
  CARTRIDGE_piggyback.type = value;
 }
 else if (strcmp(string, "CARTRIDGE_AUTOREBOOT") == 0) {
  int value = Util_sscanbool(ptr);
  if (value < 0)
   return FALSE;
  CARTRIDGE_autoreboot = value;
 }
 else return FALSE;
 return TRUE;
}
