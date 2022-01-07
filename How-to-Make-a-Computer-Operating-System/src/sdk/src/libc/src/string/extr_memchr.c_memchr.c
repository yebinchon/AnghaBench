
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void* memchr( const void* s, int c, size_t n ) {
    const unsigned char* src = ( const unsigned char* )s;
    unsigned char ch = c;

    for ( ; n != 0; n-- ) {
        if ( *src == ch ) {
            return ( void* )src;
        }

        src++;
    }

    return ((void*)0);
}
