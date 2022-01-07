
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fileHandle_t ;


 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (int ,scalar_t__*,int ) ;
 int qfalse ;

void FS_TouchFile_f( void ) {
 fileHandle_t f;

 if ( Cmd_Argc() != 2 ) {
  Com_Printf( "Usage: touchFile <file>\n" );
  return;
 }

 FS_FOpenFileRead( Cmd_Argv( 1 ), &f, qfalse );
 if ( f ) {
  FS_FCloseFile( f );
 }
}
