
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (char const) ;

int strcasecmp( const char* s1, const char* s2 ) {
    int result;

    while ( 1 ) {
        result = tolower( *s1 ) - tolower( *s2++ );

        if ( ( result != 0 ) || ( *s1++ == 0 ) ) {
            break;
        }
    }

    return result;
}
