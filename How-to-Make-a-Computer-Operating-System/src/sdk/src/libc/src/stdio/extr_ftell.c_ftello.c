
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int flags; int buffer_data_size; int buffer_pos; int has_ungotten; int fd; } ;
typedef TYPE_1__ FILE ;


 int SEEK_CUR ;
 int __FILE_BUFINPUT ;
 int __FILE_EOF ;
 int __FILE_ERROR ;
 int lseek (int ,int ,int ) ;

off_t ftello( FILE* stream ) {
    off_t l;

    if ( stream->flags & ( __FILE_EOF | __FILE_ERROR ) ) {
        return -1;
    }

    l = lseek( stream->fd, 0, SEEK_CUR );

    if ( l == ( off_t )-1 ) {
        return -1;
    }

    if ( stream->flags & __FILE_BUFINPUT ) {
        return l - ( stream->buffer_data_size - stream->buffer_pos ) - stream->has_ungotten;
    } else {
        return l + stream->buffer_pos;
    }
}
