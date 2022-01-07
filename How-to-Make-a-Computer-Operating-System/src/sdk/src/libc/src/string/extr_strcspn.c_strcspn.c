
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

size_t strcspn( const char* s, const char* reject ) {
    size_t l = 0;
    int a = 1;
    int i;
    int al = strlen( reject );

    while ( ( a ) && ( *s ) ) {
        for ( i = 0; ( a ) && ( i < al ); i++ ) {
            if ( *s == reject[ i ] ) {
                a = 0;
            }
        }

        if ( a ) {
            l++;
        }

        s++;
    }

    return l;
}
