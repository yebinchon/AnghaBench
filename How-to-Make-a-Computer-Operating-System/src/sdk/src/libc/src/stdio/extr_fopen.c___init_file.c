
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; int fd; int flags; int buffer_size; scalar_t__ has_ungotten; scalar_t__ buffer_data_size; scalar_t__ buffer_pos; } ;
typedef TYPE_1__ FILE ;





 int _IO_BUFSIZE ;
 int __FILE_CAN_READ ;
 int __FILE_CAN_WRITE ;
 int close (int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

FILE* __init_file( int fd, int close_on_error, int mode ) {
    FILE* stream;

    stream = ( FILE* )malloc( sizeof( FILE ) );

    if ( stream == ((void*)0) ) {
        if ( close_on_error ) {
            close( fd );
        }

        return ((void*)0);
    }

    stream->buffer = ( char* )malloc( _IO_BUFSIZE );

    if ( stream->buffer == ((void*)0) ) {
        free( stream );

        if ( close_on_error ) {
              close( fd );
        }

        return ((void*)0);
    }

    stream->fd = fd;
    stream->flags = 0;
    stream->buffer_pos = 0;
    stream->buffer_size = _IO_BUFSIZE;
    stream->buffer_data_size = 0;

    switch ( mode & 129 ) {
        case 129 : stream->flags |= ( __FILE_CAN_WRITE | __FILE_CAN_READ ); break;
        case 130 : stream->flags |= __FILE_CAN_READ; break;
        case 128 : stream->flags |= __FILE_CAN_WRITE; break;
        default : break;
    }

    stream->has_ungotten = 0;

    return stream;
}
