
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* string; } ;
typedef TYPE_1__ cvar_t ;
struct TYPE_12__ {char const* string; } ;
struct TYPE_11__ {char* string; } ;
struct TYPE_10__ {char* string; } ;
struct TYPE_9__ {char const* string; int modified; } ;
struct TYPE_8__ {char const* string; } ;


 char const* BASEGAME ;
 int CVAR_INIT ;
 int CVAR_SYSTEMINFO ;
 int Cmd_AddCommand (char*,int (*) ()) ;
 int Com_AppendCDKey (scalar_t__*) ;
 int Com_Printf (char*,...) ;
 int Com_ReadCDKey (char*) ;
 void* Cvar_Get (char*,char const*,int) ;
 int FS_AddGameDirectory (char*,char const*) ;
 int FS_Dir_f () ;
 int FS_NewDir_f () ;
 int FS_Path_f () ;
 int FS_ReorderPurePaks () ;
 int FS_TouchFile_f () ;
 scalar_t__ Q_stricmp (char const*,char const*) ;
 char* Sys_DefaultCDPath () ;
 char* Sys_DefaultHomePath () ;
 char* Sys_DefaultInstallPath () ;
 int * fopen (char*,char*) ;
 TYPE_6__* fs_basegame ;
 TYPE_5__* fs_basepath ;
 TYPE_4__* fs_cdpath ;
 void* fs_copyfiles ;
 void* fs_debug ;
 TYPE_3__* fs_gamedirvar ;
 TYPE_2__* fs_homepath ;
 int fs_packFiles ;
 void* fs_restrict ;
 int * missingFiles ;
 int qfalse ;

__attribute__((used)) static void FS_Startup( const char *gameName ) {
        const char *homePath;
 cvar_t *fs;

 Com_Printf( "----- FS_Startup -----\n" );

 fs_debug = Cvar_Get( "fs_debug", "0", 0 );
 fs_copyfiles = Cvar_Get( "fs_copyfiles", "0", CVAR_INIT );
 fs_cdpath = Cvar_Get ("fs_cdpath", Sys_DefaultCDPath(), CVAR_INIT );
 fs_basepath = Cvar_Get ("fs_basepath", Sys_DefaultInstallPath(), CVAR_INIT );
 fs_basegame = Cvar_Get ("fs_basegame", "", CVAR_INIT );
  homePath = Sys_DefaultHomePath();
  if (!homePath || !homePath[0]) {
  homePath = fs_basepath->string;
 }
 fs_homepath = Cvar_Get ("fs_homepath", homePath, CVAR_INIT );
 fs_gamedirvar = Cvar_Get ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
 fs_restrict = Cvar_Get ("fs_restrict", "", CVAR_INIT );


 if (fs_cdpath->string[0]) {
  FS_AddGameDirectory( fs_cdpath->string, gameName );
 }
 if (fs_basepath->string[0]) {
  FS_AddGameDirectory( fs_basepath->string, gameName );
 }


 if (fs_basepath->string[0] && Q_stricmp(fs_homepath->string,fs_basepath->string)) {
  FS_AddGameDirectory ( fs_homepath->string, gameName );
 }


 if ( fs_basegame->string[0] && !Q_stricmp( gameName, BASEGAME ) && Q_stricmp( fs_basegame->string, gameName ) ) {
  if (fs_cdpath->string[0]) {
   FS_AddGameDirectory(fs_cdpath->string, fs_basegame->string);
  }
  if (fs_basepath->string[0]) {
   FS_AddGameDirectory(fs_basepath->string, fs_basegame->string);
  }
  if (fs_homepath->string[0] && Q_stricmp(fs_homepath->string,fs_basepath->string)) {
   FS_AddGameDirectory(fs_homepath->string, fs_basegame->string);
  }
 }


 if ( fs_gamedirvar->string[0] && !Q_stricmp( gameName, BASEGAME ) && Q_stricmp( fs_gamedirvar->string, gameName ) ) {
  if (fs_cdpath->string[0]) {
   FS_AddGameDirectory(fs_cdpath->string, fs_gamedirvar->string);
  }
  if (fs_basepath->string[0]) {
   FS_AddGameDirectory(fs_basepath->string, fs_gamedirvar->string);
  }
  if (fs_homepath->string[0] && Q_stricmp(fs_homepath->string,fs_basepath->string)) {
   FS_AddGameDirectory(fs_homepath->string, fs_gamedirvar->string);
  }
 }

 Com_ReadCDKey( "baseq3" );
 fs = Cvar_Get ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
 if (fs && fs->string[0] != 0) {
  Com_AppendCDKey( fs->string );
 }


 Cmd_AddCommand ("path", FS_Path_f);
 Cmd_AddCommand ("dir", FS_Dir_f );
 Cmd_AddCommand ("fdir", FS_NewDir_f );
 Cmd_AddCommand ("touchFile", FS_TouchFile_f );



 FS_ReorderPurePaks();


 FS_Path_f();

 fs_gamedirvar->modified = qfalse;

 Com_Printf( "----------------------\n" );






 Com_Printf( "%d files in pk3 files\n", fs_packFiles );
}
