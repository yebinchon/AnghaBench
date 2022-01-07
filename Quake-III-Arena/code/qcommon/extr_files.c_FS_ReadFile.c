
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int len ;
typedef scalar_t__ fileHandle_t ;
typedef int byte ;
struct TYPE_2__ {int integer; } ;


 int Com_DPrintf (char*,char const*) ;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (char const*,scalar_t__*,scalar_t__) ;
 int FS_Flush (scalar_t__) ;
 int FS_Read (int*,int,scalar_t__) ;
 int FS_Write (int*,int,scalar_t__) ;
 int* Hunk_AllocateTempMemory (int) ;
 TYPE_1__* com_journal ;
 scalar_t__ com_journalDataFile ;
 int fs_loadCount ;
 int fs_loadStack ;
 int fs_searchpaths ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 scalar_t__ strstr (char const*,char*) ;

int FS_ReadFile( const char *qpath, void **buffer ) {
 fileHandle_t h;
 byte* buf;
 qboolean isConfig;
 int len;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !qpath || !qpath[0] ) {
  Com_Error( ERR_FATAL, "FS_ReadFile with empty name\n" );
 }

 buf = ((void*)0);



 if ( strstr( qpath, ".cfg" ) ) {
  isConfig = qtrue;
  if ( com_journal && com_journal->integer == 2 ) {
   int r;

   Com_DPrintf( "Loading %s from journal file.\n", qpath );
   r = FS_Read( &len, sizeof( len ), com_journalDataFile );
   if ( r != sizeof( len ) ) {
    if (buffer != ((void*)0)) *buffer = ((void*)0);
    return -1;
   }

   if (!len) {
    if (buffer == ((void*)0)) {
     return 1;
    }
    *buffer = ((void*)0);
    return -1;
   }
   if (buffer == ((void*)0)) {
    return len;
   }

   buf = Hunk_AllocateTempMemory(len+1);
   *buffer = buf;

   r = FS_Read( buf, len, com_journalDataFile );
   if ( r != len ) {
    Com_Error( ERR_FATAL, "Read from journalDataFile failed" );
   }

   fs_loadCount++;
   fs_loadStack++;


   buf[len] = 0;

   return len;
  }
 } else {
  isConfig = qfalse;
 }


 len = FS_FOpenFileRead( qpath, &h, qfalse );
 if ( h == 0 ) {
  if ( buffer ) {
   *buffer = ((void*)0);
  }

  if ( isConfig && com_journal && com_journal->integer == 1 ) {
   Com_DPrintf( "Writing zero for %s to journal file.\n", qpath );
   len = 0;
   FS_Write( &len, sizeof( len ), com_journalDataFile );
   FS_Flush( com_journalDataFile );
  }
  return -1;
 }

 if ( !buffer ) {
  if ( isConfig && com_journal && com_journal->integer == 1 ) {
   Com_DPrintf( "Writing len for %s to journal file.\n", qpath );
   FS_Write( &len, sizeof( len ), com_journalDataFile );
   FS_Flush( com_journalDataFile );
  }
  FS_FCloseFile( h);
  return len;
 }

 fs_loadCount++;
 fs_loadStack++;

 buf = Hunk_AllocateTempMemory(len+1);
 *buffer = buf;

 FS_Read (buf, len, h);


 buf[len] = 0;
 FS_FCloseFile( h );


 if ( isConfig && com_journal && com_journal->integer == 1 ) {
  Com_DPrintf( "Writing %s to journal file.\n", qpath );
  FS_Write( &len, sizeof( len ), com_journalDataFile );
  FS_Write( buf, len, com_journalDataFile );
  FS_Flush( com_journalDataFile );
 }
 return len;
}
