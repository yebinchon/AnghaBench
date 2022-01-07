
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef scalar_t__ fileHandle_t ;


 int Com_sprintf (char*,int,char*,char*) ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (char*,scalar_t__*,int ) ;
 int MAX_QPATH ;
 int qfalse ;

void SV_TouchCGame(void) {
 fileHandle_t f;
 char filename[MAX_QPATH];

 Com_sprintf( filename, sizeof(filename), "vm/%s.qvm", "cgame" );
 FS_FOpenFileRead( filename, &f, qfalse );
 if ( f ) {
  FS_FCloseFile( f );
 }
}
