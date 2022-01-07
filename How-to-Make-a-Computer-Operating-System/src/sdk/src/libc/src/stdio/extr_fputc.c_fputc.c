
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int buffer_pos; int buffer_size; int* buffer; int fd; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 int __FILE_BUFLINEWISE ;
 int __FILE_CAN_WRITE ;
 int __FILE_ERROR ;
 int __FILE_NOBUF ;
 scalar_t__ __set_stream_flags (TYPE_1__*,int ) ;
 scalar_t__ fflush (TYPE_1__*) ;
 int write (int ,int*,int) ;

int fputc( int c, FILE* stream ) {


    if ( ( ( stream->flags & __FILE_CAN_WRITE ) == 0 ) ||
         ( __set_stream_flags( stream, 0 ) ) ) {
        stream->flags |= __FILE_ERROR;
        return EOF;
    }



    if ( stream->buffer_pos >= stream->buffer_size - 1 ) {
        if ( fflush( stream ) ) {
            stream->flags |= __FILE_ERROR;
            return EOF;
        }
    }

    if ( stream->flags & __FILE_NOBUF ) {
        if ( write( stream->fd, &c, 1 ) != 1 ) {
            stream->flags |= __FILE_ERROR;
            return EOF;
        }

        return 0;
    }

    stream->buffer[ stream->buffer_pos++ ] = c;

    if ( ( ( stream->flags & __FILE_BUFLINEWISE ) && ( c == '\n' ) ) ||
         ( stream->flags & __FILE_NOBUF ) ) {
        if ( fflush( stream ) ) {
            stream->flags |= __FILE_ERROR;
            return EOF;
        }
    }

    return 0;
}
