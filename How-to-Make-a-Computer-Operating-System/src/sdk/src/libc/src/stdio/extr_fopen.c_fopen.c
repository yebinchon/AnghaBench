
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * __init_file (int,int,int) ;
 int __parse_mode (char const*) ;
 int open (char const*,int,int) ;

FILE* fopen( const char* path, const char* mode ) {
    int fd;
    int flags;

    flags = __parse_mode( mode );

    fd = open( path, flags, 0666 );

    if ( fd < 0 ) {
        return ((void*)0);
    }

    return __init_file( fd, 1, flags );
}
