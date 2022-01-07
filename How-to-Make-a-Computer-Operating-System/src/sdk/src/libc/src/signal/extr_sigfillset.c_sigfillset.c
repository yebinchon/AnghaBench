
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int EINVAL ;
 int errno ;
 int memset (void*,int,int) ;

int sigfillset( sigset_t* set ) {
    if ( set == ((void*)0) ) {
        errno = -EINVAL;
        return -1;
    }

    memset( ( void* )set, 0xFF, sizeof( sigset_t ) );

    return 0;
}
