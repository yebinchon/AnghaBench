
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t fileHandle_t ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int string; } ;
struct TYPE_6__ {int o; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ handleFiles; void* handleSync; int name; void* zipFile; } ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*,char*) ;
 int ERR_FATAL ;
 char* FS_BuildOSPath (int ,int ,char const*) ;
 scalar_t__ FS_CreatePath (char*) ;
 size_t FS_HandleForFile () ;
 int Q_strncpyz (int ,char const*,int) ;
 int fopen (char*,char*) ;
 TYPE_5__* fs_debug ;
 int fs_gamedir ;
 TYPE_4__* fs_homepath ;
 int fs_searchpaths ;
 TYPE_3__* fsh ;
 void* qfalse ;

fileHandle_t FS_FOpenFileWrite( const char *filename ) {
 char *ospath;
 fileHandle_t f;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 f = FS_HandleForFile();
 fsh[f].zipFile = qfalse;

 ospath = FS_BuildOSPath( fs_homepath->string, fs_gamedir, filename );

 if ( fs_debug->integer ) {
  Com_Printf( "FS_FOpenFileWrite: %s\n", ospath );
 }

 if( FS_CreatePath( ospath ) ) {
  return 0;
 }




 fsh[f].handleFiles.file.o = fopen( ospath, "wb" );

 Q_strncpyz( fsh[f].name, filename, sizeof( fsh[f].name ) );

 fsh[f].handleSync = qfalse;
 if (!fsh[f].handleFiles.file.o) {
  f = 0;
 }
 return f;
}
