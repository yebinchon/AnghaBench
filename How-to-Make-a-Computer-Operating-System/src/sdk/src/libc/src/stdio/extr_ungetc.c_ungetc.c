
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_ungotten; unsigned char unget_buffer; int flags; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 int __FILE_EOF ;
 int __FILE_ERROR ;

int ungetc( int c, FILE* stream ) {
    if ( ( stream->has_ungotten ) ||
         ( c < 0 ) ||
         ( c > 255 ) ) {
        return EOF;
    }

    stream->has_ungotten = 1;
    stream->unget_buffer = ( unsigned char )c;
    stream->flags &= ~( __FILE_EOF | __FILE_ERROR );

    return c;
}
