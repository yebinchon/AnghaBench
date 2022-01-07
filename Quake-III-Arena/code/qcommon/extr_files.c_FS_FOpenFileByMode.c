
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* qboolean ;
typedef int fsMode_t ;
typedef int fileHandle_t ;
struct TYPE_4__ {int o; int z; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; int fileSize; void* handleSync; void* streamed; TYPE_2__ handleFiles; int baseOffset; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;


 int FS_FOpenFileAppend (char const*) ;
 int FS_FOpenFileRead (char const*,int*,scalar_t__) ;
 int FS_FOpenFileWrite (char const*) ;


 int Sys_BeginStreamedFile (int,int) ;
 TYPE_3__* fsh ;
 int ftell (int ) ;
 void* qfalse ;
 scalar_t__ qtrue ;
 int unztell (int ) ;

int FS_FOpenFileByMode( const char *qpath, fileHandle_t *f, fsMode_t mode ) {
 int r;
 qboolean sync;

 sync = qfalse;

 switch( mode ) {
 case 129:
  r = FS_FOpenFileRead( qpath, f, qtrue );
  break;
 case 128:
  *f = FS_FOpenFileWrite( qpath );
  r = 0;
  if (*f == 0) {
   r = -1;
  }
  break;
 case 130:
  sync = qtrue;
 case 131:
  *f = FS_FOpenFileAppend( qpath );
  r = 0;
  if (*f == 0) {
   r = -1;
  }
  break;
 default:
  Com_Error( ERR_FATAL, "FSH_FOpenFile: bad mode" );
  return -1;
 }

 if (!f) {
  return r;
 }

 if ( *f ) {
  if (fsh[*f].zipFile == qtrue) {
   fsh[*f].baseOffset = unztell(fsh[*f].handleFiles.file.z);
  } else {
   fsh[*f].baseOffset = ftell(fsh[*f].handleFiles.file.o);
  }
  fsh[*f].fileSize = r;
  fsh[*f].streamed = qfalse;

  if (mode == 129) {
   Sys_BeginStreamedFile( *f, 0x4000 );
   fsh[*f].streamed = qtrue;
  }
 }
 fsh[*f].handleSync = sync;

 return r;
}
