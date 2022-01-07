
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char* strdup( const char* s ) {
    char* s2;
    size_t length;

    length = strlen( s );
    s2 = ( char* )malloc( length + 1 );

    if ( s2 == ((void*)0) ) {
        return ((void*)0);
    }

    memcpy( s2, s, length + 1 );

    return s2;
}
