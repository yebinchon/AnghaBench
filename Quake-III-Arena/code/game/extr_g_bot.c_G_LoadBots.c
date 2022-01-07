
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ vmCvar_t ;


 int CVAR_INIT ;
 int CVAR_ROM ;
 int G_LoadBotsFromFile (char*) ;
 scalar_t__ g_numBots ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trap_Cvar_Register (TYPE_1__*,char*,char*,int) ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_Printf (int ) ;
 int va (char*,scalar_t__) ;

__attribute__((used)) static void G_LoadBots( void ) {
 vmCvar_t botsFile;
 int numdirs;
 char filename[128];
 char dirlist[1024];
 char* dirptr;
 int i;
 int dirlen;

 if ( !trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
  return;
 }

 g_numBots = 0;

 trap_Cvar_Register( &botsFile, "g_botsFile", "", CVAR_INIT|CVAR_ROM );
 if( *botsFile.string ) {
  G_LoadBotsFromFile(botsFile.string);
 }
 else {
  G_LoadBotsFromFile("scripts/bots.txt");
 }


 numdirs = trap_FS_GetFileList("scripts", ".bot", dirlist, 1024 );
 dirptr = dirlist;
 for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
  dirlen = strlen(dirptr);
  strcpy(filename, "scripts/");
  strcat(filename, dirptr);
  G_LoadBotsFromFile(filename);
 }
 trap_Printf( va( "%i bots parsed\n", g_numBots ) );
}
