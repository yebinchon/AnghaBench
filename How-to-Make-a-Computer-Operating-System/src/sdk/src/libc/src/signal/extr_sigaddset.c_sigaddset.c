
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long sigset_t ;


 int EINVAL ;
 int _NSIG ;
 int errno ;

int sigaddset( sigset_t* set, int signum ) {
    if ( ( set == ((void*)0) ) ||
         ( signum < 1 ) ||
         ( signum >= _NSIG ) ) {
        errno = -EINVAL;
        return -1;
    }

    *set |= ( 1ULL << ( signum - 1 ) );

    return 0;
}
