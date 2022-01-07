
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int EOVERFLOW ;
 scalar_t__ LONG_MAX ;
 int errno ;
 scalar_t__ ftello (int *) ;

long ftell( FILE* stream ) {
    off_t l;

    l = ftello( stream );

    if ( l > LONG_MAX ) {
        errno = EOVERFLOW;
        return -1;
    }

    return ( long )l;
}
