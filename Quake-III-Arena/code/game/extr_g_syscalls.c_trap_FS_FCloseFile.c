
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int G_FS_FCLOSE_FILE ;
 int syscall (int ,int ) ;

void trap_FS_FCloseFile( fileHandle_t f ) {
 syscall( G_FS_FCLOSE_FILE, f );
}
