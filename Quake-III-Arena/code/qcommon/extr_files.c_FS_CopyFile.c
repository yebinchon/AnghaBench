
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int FILE ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*,...) ;
 int ERR_FATAL ;
 scalar_t__ FS_CreatePath (char*) ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int fwrite (int *,int,int,int *) ;
 int * malloc (int) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void FS_CopyFile( char *fromOSPath, char *toOSPath ) {
 FILE *f;
 int len;
 byte *buf;

 Com_Printf( "copy %s to %s\n", fromOSPath, toOSPath );

 if (strstr(fromOSPath, "journal.dat") || strstr(fromOSPath, "journaldata.dat")) {
  Com_Printf( "Ignoring journal files\n");
  return;
 }

 f = fopen( fromOSPath, "rb" );
 if ( !f ) {
  return;
 }
 fseek (f, 0, SEEK_END);
 len = ftell (f);
 fseek (f, 0, SEEK_SET);



 buf = malloc( len );
 if (fread( buf, 1, len, f ) != len)
  Com_Error( ERR_FATAL, "Short read in FS_Copyfiles()\n" );
 fclose( f );

 if( FS_CreatePath( toOSPath ) ) {
  return;
 }

 f = fopen( toOSPath, "wb" );
 if ( !f ) {
  return;
 }
 if (fwrite( buf, 1, len, f ) != len)
  Com_Error( ERR_FATAL, "Short write in FS_Copyfiles()\n" );
 fclose( f );
 free( buf );
}
