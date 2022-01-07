
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_unmount ;
 int errno ;
 int syscall1 (int ,int) ;

int umount(
    const char* dir
) {
    int error;

    error = syscall1(
        SYS_unmount,
        ( int )dir
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
