
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 char* strerror (int ) ;

void perror( const char* s ) {
    if ( s != ((void*)0) ) {
        fprintf( stderr, "%s", s );
    }

    fprintf( stderr, ": %s\n", strerror( errno ) );
}
