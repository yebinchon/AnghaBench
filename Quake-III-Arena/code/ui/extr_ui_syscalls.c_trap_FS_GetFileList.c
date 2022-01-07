
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_FS_GETFILELIST ;
 int syscall (int ,char const*,char const*,char*,int) ;

int trap_FS_GetFileList( const char *path, const char *extension, char *listbuf, int bufsize ) {
 return syscall( UI_FS_GETFILELIST, path, extension, listbuf, bufsize );
}
