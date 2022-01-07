
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sigset_t ;


 int EINVAL ;
 int errno ;

int sigemptyset( sigset_t* set ) {
    if ( set == ((void*)0) ) {
        errno = -EINVAL;
        return -1;
    }

    *set = 0;

    return 0;
}
