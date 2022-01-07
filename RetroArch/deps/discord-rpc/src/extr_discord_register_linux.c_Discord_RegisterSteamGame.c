
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Discord_Register (char const*,char*) ;
 int sprintf (char*,char*,char const*) ;

void Discord_RegisterSteamGame(
      const char* applicationId,
      const char* steamId)
{
   char command[256];
   sprintf(command, "xdg-open steam://rungameid/%s", steamId);
   Discord_Register(applicationId, command);
}
