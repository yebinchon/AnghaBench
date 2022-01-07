
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t fileHandle_t ;
struct TYPE_4__ {int o; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {TYPE_2__ handleFiles; } ;


 int fflush (int ) ;
 TYPE_3__* fsh ;

void FS_Flush( fileHandle_t f ) {
 fflush(fsh[f].handleFiles.file.o);
}
