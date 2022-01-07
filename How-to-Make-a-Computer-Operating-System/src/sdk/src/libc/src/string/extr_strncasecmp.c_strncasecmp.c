
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int toupper (char const) ;

int strncasecmp( const char* s1, const char* s2, size_t c ) {
    int result = 0;

    while ( c ) {
        result = toupper( *s1 ) - toupper( *s2++ );

        if ( ( result != 0 ) || ( *s1++ == 0 ) ) {
            break;
        }

        c--;
    }

    return result;
}
