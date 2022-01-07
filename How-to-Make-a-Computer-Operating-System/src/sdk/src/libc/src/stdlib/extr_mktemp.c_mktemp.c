
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int mkstemp (char*) ;
 int unlink (char*) ;

char* mktemp( char* template ) {
    int fd;

    fd = mkstemp( template );

    if ( fd < 0 ) {
        return ((void*)0);
    }

    close( fd );

    unlink( template );

    return template;
}
