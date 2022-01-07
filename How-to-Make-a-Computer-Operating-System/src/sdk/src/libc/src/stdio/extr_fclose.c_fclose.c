
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; struct TYPE_5__* buffer; int fd; } ;
typedef TYPE_1__ FILE ;


 int __FILE_DONTFREEBUF ;
 int close (int ) ;
 int fflush (TYPE_1__*) ;
 int free (TYPE_1__*) ;

int fclose( FILE* stream ) {
    int result;

    result = fflush( stream );
    result |= close( stream->fd );

    if ( ( ( stream->flags & __FILE_DONTFREEBUF ) == 0 ) &&
         ( stream->buffer != ((void*)0) ) ) {
        free( stream->buffer );
    }

    free( stream );

    return result;
}
