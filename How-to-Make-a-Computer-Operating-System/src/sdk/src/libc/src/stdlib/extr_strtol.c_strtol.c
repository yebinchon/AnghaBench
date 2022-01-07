
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ABS_LONG_MIN ;
 long LONG_MAX ;
 long LONG_MIN ;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isspace (char const) ;
 unsigned long strtoul (char const*,char**,int) ;

long int strtol( const char* nptr, char** endptr, int base ) {
    int neg = 0;
    unsigned long int v;
    const char* orig = nptr;

    while ( isspace( *nptr ) ) {
        nptr++;
    }

    if ( ( *nptr == '-' ) && ( isalnum( nptr[ 1 ] ) ) ) {
        neg = -1;
        ++nptr;
    }

    v = strtoul( nptr, endptr, base );

    if ( ( endptr ) && ( *endptr == nptr) ) {
        *endptr = ( char* )orig;
    }

    if ( v >= ABS_LONG_MIN ) {
        if ( ( v == ABS_LONG_MIN ) && ( neg ) ) {
            return v;
        }

        return ( neg ? LONG_MIN : LONG_MAX );
    }

    return ( neg ? -v : v );
}
