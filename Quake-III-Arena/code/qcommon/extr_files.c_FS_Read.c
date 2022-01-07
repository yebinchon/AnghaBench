
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t fileHandle_t ;
typedef int byte ;
struct TYPE_4__ {int z; int o; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; TYPE_2__ handleFiles; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int fread (int *,int,int,int ) ;
 int fs_readCount ;
 int fs_searchpaths ;
 TYPE_3__* fsh ;
 scalar_t__ qfalse ;
 int unzReadCurrentFile (int ,void*,int) ;

int FS_Read( void *buffer, int len, fileHandle_t f ) {
 int block, remaining;
 int read;
 byte *buf;
 int tries;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !f ) {
  return 0;
 }

 buf = (byte *)buffer;
 fs_readCount += len;

 if (fsh[f].zipFile == qfalse) {
  remaining = len;
  tries = 0;
  while (remaining) {
   block = remaining;
   read = fread (buf, 1, block, fsh[f].handleFiles.file.o);
   if (read == 0) {


    if (!tries) {
     tries = 1;
    } else {
     return len-remaining;
    }
   }

   if (read == -1) {
    Com_Error (ERR_FATAL, "FS_Read: -1 bytes read");
   }

   remaining -= read;
   buf += read;
  }
  return len;
 } else {
  return unzReadCurrentFile(fsh[f].handleFiles.file.z, buffer, len);
 }
}
