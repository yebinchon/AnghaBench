
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_4__ {int * o; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {TYPE_2__ handleFiles; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_FILE_HANDLES ;
 TYPE_3__* fsh ;

__attribute__((used)) static fileHandle_t FS_HandleForFile(void) {
 int i;

 for ( i = 1 ; i < MAX_FILE_HANDLES ; i++ ) {
  if ( fsh[i].handleFiles.file.o == ((void*)0) ) {
   return i;
  }
 }
 Com_Error( ERR_DROP, "FS_HandleForFile: none free" );
 return 0;
}
