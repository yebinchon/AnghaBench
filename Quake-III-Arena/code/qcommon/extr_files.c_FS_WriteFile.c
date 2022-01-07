
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*,char const*) ;
 int ERR_FATAL ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileWrite (char const*) ;
 int FS_Write (void const*,int,int ) ;
 int fs_searchpaths ;

void FS_WriteFile( const char *qpath, const void *buffer, int size ) {
 fileHandle_t f;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !qpath || !buffer ) {
  Com_Error( ERR_FATAL, "FS_WriteFile: NULL parameter" );
 }

 f = FS_FOpenFileWrite( qpath );
 if ( !f ) {
  Com_Printf( "Failed to open %s\n", qpath );
  return;
 }

 FS_Write( buffer, size, f );

 FS_FCloseFile( f );
}
