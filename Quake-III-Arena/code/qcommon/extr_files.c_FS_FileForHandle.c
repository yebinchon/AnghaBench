
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t fileHandle_t ;
struct TYPE_4__ {int * o; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; TYPE_2__ handleFiles; } ;
typedef int FILE ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 size_t MAX_FILE_HANDLES ;
 TYPE_3__* fsh ;
 scalar_t__ qtrue ;

__attribute__((used)) static FILE *FS_FileForHandle( fileHandle_t f ) {
 if ( f < 0 || f > MAX_FILE_HANDLES ) {
  Com_Error( ERR_DROP, "FS_FileForHandle: out of reange" );
 }
 if (fsh[f].zipFile == qtrue) {
  Com_Error( ERR_DROP, "FS_FileForHandle: can't get FILE on zip file" );
 }
 if ( ! fsh[f].handleFiles.file.o ) {
  Com_Error( ERR_DROP, "FS_FileForHandle: NULL" );
 }

 return fsh[f].handleFiles.file.o;
}
