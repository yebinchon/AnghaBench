
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int * __init_file (int,int ,int) ;
 int __parse_mode (char const*) ;
 int errno ;

FILE* fdopen( int fd, const char* mode ) {
    int flags;

    if ( fd < 0 ) {
        errno = -EINVAL;
        return ((void*)0);
    }

    flags = __parse_mode( mode );

    return __init_file( fd, 0, flags );
}
