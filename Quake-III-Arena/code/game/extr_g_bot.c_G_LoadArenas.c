
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ vmCvar_t ;


 int CVAR_INIT ;
 int CVAR_ROM ;
 int G_LoadArenasFromFile (char*) ;
 int Info_SetValueForKey (int ,char*,int ) ;
 int * g_arenaInfos ;
 int g_numArenas ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trap_Cvar_Register (TYPE_1__*,char*,char*,int) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_Printf (int ) ;
 int va (char*,int) ;

__attribute__((used)) static void G_LoadArenas( void ) {
 int numdirs;
 vmCvar_t arenasFile;
 char filename[128];
 char dirlist[1024];
 char* dirptr;
 int i, n;
 int dirlen;

 g_numArenas = 0;

 trap_Cvar_Register( &arenasFile, "g_arenasFile", "", CVAR_INIT|CVAR_ROM );
 if( *arenasFile.string ) {
  G_LoadArenasFromFile(arenasFile.string);
 }
 else {
  G_LoadArenasFromFile("scripts/arenas.txt");
 }


 numdirs = trap_FS_GetFileList("scripts", ".arena", dirlist, 1024 );
 dirptr = dirlist;
 for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
  dirlen = strlen(dirptr);
  strcpy(filename, "scripts/");
  strcat(filename, dirptr);
  G_LoadArenasFromFile(filename);
 }
 trap_Printf( va( "%i arenas parsed\n", g_numArenas ) );

 for( n = 0; n < g_numArenas; n++ ) {
  Info_SetValueForKey( g_arenaInfos[n], "num", va( "%i", n ) );
 }
}
