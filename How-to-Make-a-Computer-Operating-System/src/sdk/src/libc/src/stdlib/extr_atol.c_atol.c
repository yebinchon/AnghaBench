
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long atol( const char* s ) {
    long v = 0;
    int sign = 0;

    while ( ( *s == ' ' ) || ( ( unsigned int )( *s - 9 ) < 5u ) ) {
        ++s;
    }

    switch ( *s ) {
        case '-' : sign = -1;
        case '+' : ++s;
    }

    while ( ( unsigned int )( *s - '0' ) < 10u ) {
        v = v * 10 + *s - '0';
        ++s;
    }

    return sign ? -v : v;
}
