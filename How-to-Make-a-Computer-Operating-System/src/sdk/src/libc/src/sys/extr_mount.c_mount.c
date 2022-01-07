
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_mount ;
 int errno ;
 int syscall4 (int ,int,int,int,int) ;

int mount(
    const char* source,
    const char* target,
    const char* filesystemtype,
    unsigned long mountflags,
    const void* data
) {
    int error;

    error = syscall4(
        SYS_mount,
        ( int )source,
        ( int )target,
        ( int )filesystemtype,
        ( int )mountflags
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
