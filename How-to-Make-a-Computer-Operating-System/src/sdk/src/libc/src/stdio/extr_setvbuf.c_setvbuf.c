
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; char* buffer; size_t buffer_size; scalar_t__ buffer_data_size; scalar_t__ buffer_pos; } ;
typedef TYPE_1__ FILE ;


 int __FILE_DONTFREEBUF ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int set_flags (TYPE_1__*,int) ;

int setvbuf( FILE* stream, char* buf, int flags, size_t size ) {
    if ( buf != ((void*)0) ) {
        if ( ( stream->flags & __FILE_DONTFREEBUF ) == 0 ) {
            free( stream->buffer );
        }

        stream->buffer = buf;
        stream->flags |= __FILE_DONTFREEBUF;
    } else {
        char *tmp;

        if ( size == 0 ) {
            return set_flags( stream, flags );
        }

        tmp = ( char* )malloc( size );

        if ( tmp == ((void*)0) ) {
            return -1;
        }

        if ( ( stream->flags & __FILE_DONTFREEBUF ) == 0 ) {
            free( stream->buffer );
        }

        stream->buffer = tmp;
        stream->flags &= ~__FILE_DONTFREEBUF;
    }

    stream->buffer_size = size;
    stream->buffer_pos = 0;
    stream->buffer_data_size = 0;

    return set_flags( stream, flags );
}
