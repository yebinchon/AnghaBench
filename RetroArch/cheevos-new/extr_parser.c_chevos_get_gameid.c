
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gameid ;


 int CHEEVOS_JSON_KEY_GAMEID ;
 scalar_t__ rcheevos_get_value (char const*,int ,char*,int) ;
 int strtol (char*,int *,int) ;

unsigned chevos_get_gameid(const char* json)
{
   char gameid[32];

   if (rcheevos_get_value(json, CHEEVOS_JSON_KEY_GAMEID, gameid, sizeof(gameid)) != 0)
      return 0;

   return (unsigned)strtol(gameid, ((void*)0), 10);
}
