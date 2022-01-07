
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,size_t) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char* strndup( const char* s, size_t n ) {
    char* s2;
    size_t len;

    len = strlen( s );
    len = MIN( len, n );

    s2 = ( char* )malloc( len + 1 );

    if ( s2 == ((void*)0) ) {
        return ((void*)0);
    }

    memcpy( s2, s, len );
    s2[ len ] = '\0';

    return s2;
}
