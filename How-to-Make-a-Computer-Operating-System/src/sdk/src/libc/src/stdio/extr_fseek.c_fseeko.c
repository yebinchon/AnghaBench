
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int flags; int fd; scalar_t__ has_ungotten; scalar_t__ buffer_data_size; scalar_t__ buffer_pos; } ;
typedef TYPE_1__ FILE ;


 int __FILE_EOF ;
 int __FILE_ERROR ;
 int fflush (TYPE_1__*) ;
 int lseek (int ,int ,int) ;

int fseeko( FILE* stream, off_t offset, int whence ) {
    fflush( stream );

    stream->buffer_pos = 0;
    stream->buffer_data_size = 0;
    stream->flags &= ~( __FILE_EOF | __FILE_ERROR );
    stream->has_ungotten = 0;

    return ( lseek( stream->fd, offset, whence ) != -1 ? 0 : -1 );
}
