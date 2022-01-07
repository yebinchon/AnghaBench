
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int string; } ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*,char*,char*) ;
 int ERR_FATAL ;
 char* FS_BuildOSPath (int ,int ,char const*) ;
 int FS_CopyFile (char*,char*) ;
 int FS_Remove (char*) ;
 int S_ClearSoundBuffer () ;
 TYPE_2__* fs_debug ;
 int fs_gamedir ;
 TYPE_1__* fs_homepath ;
 int fs_searchpaths ;
 scalar_t__ rename (char*,char*) ;

void FS_Rename( const char *from, const char *to ) {
 char *from_ospath, *to_ospath;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }


 S_ClearSoundBuffer();

 from_ospath = FS_BuildOSPath( fs_homepath->string, fs_gamedir, from );
 to_ospath = FS_BuildOSPath( fs_homepath->string, fs_gamedir, to );

 if ( fs_debug->integer ) {
  Com_Printf( "FS_Rename: %s --> %s\n", from_ospath, to_ospath );
 }

 if (rename( from_ospath, to_ospath )) {

  FS_CopyFile ( from_ospath, to_ospath );
  FS_Remove ( from_ospath );
 }
}
