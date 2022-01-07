
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ FILE ;


 int __FILE_BUFINPUT ;
 int fflush (TYPE_1__*) ;

int __set_stream_flags( FILE* stream, int new_flags ) {
    if ( ( stream->flags & __FILE_BUFINPUT ) != new_flags) {
        int error;

        error = fflush( stream );

        stream->flags = ( stream->flags & ~__FILE_BUFINPUT ) | new_flags;

        return error;
    }

    return 0;
}
