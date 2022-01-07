
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_execve ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int execve( const char* filename, char* const argv[], char* const envp[] ) {
    int error;

    error = syscall3( SYS_execve, ( int )filename, ( int )argv, ( int )envp );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
