
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fsMode_t ;
typedef int fileHandle_t ;


 int CG_FS_FOPENFILE ;
 int syscall (int ,char const*,int *,int ) ;

int trap_FS_FOpenFile( const char *qpath, fileHandle_t *f, fsMode_t mode ) {
 return syscall( CG_FS_FOPENFILE, qpath, f, mode );
}
