
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (int ,char*) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int ClientFromName(char *name) {
 int i;
 char buf[MAX_INFO_STRING];
 static int maxclients;

 if (!maxclients)
  maxclients = trap_Cvar_VariableIntegerValue("sv_maxclients");
 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
  Q_CleanStr( buf );
  if (!Q_stricmp(Info_ValueForKey(buf, "n"), name)) return i;
 }
 return -1;
}
