
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t fileHandle_t ;
struct TYPE_2__ {scalar_t__ streamed; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FS_Read (void*,int,size_t) ;
 int Sys_StreamedRead (void*,int,int,size_t) ;
 int fs_searchpaths ;
 TYPE_1__* fsh ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int FS_Read2( void *buffer, int len, fileHandle_t f ) {
 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !f ) {
  return 0;
 }
 if (fsh[f].streamed) {
  int r;
  fsh[f].streamed = qfalse;
  r = Sys_StreamedRead( buffer, len, 1, f);
  fsh[f].streamed = qtrue;
  return r;
 } else {
  return FS_Read( buffer, len, f);
 }
}
