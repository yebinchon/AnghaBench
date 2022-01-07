
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fflush (int *) ;
 int fputc (int ,int *) ;

int fputs( const char* s, FILE* stream ) {
    while ( *s ) {
        fputc( *s++, stream );
    }

    fflush( stream );

    return 0;
}
