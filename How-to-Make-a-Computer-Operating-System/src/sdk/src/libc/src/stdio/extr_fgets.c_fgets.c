
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;

char* fgets( char* s, int size, FILE* stream ) {
    char* orig = s;
    int l;

    for ( l = size; l > 1; ) {
        register int c = fgetc( stream );

        if ( c == EOF ) {
            break;
        }

        *s = c;
        ++s;
        --l;

        if ( c == '\n' ) {
            break;
        }
    }

    if ( ( l == size ) || ( ferror( stream ) ) ) {
        return 0;
    }

    *s = 0;

    return orig;
}
