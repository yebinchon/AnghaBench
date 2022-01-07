
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ buffer_pos; scalar_t__ buffer_data_size; scalar_t__ has_ungotten; } ;
typedef TYPE_1__ FILE ;


 int __FILE_BUFINPUT ;
 int __FILE_NOBUF ;

int fpurge( FILE* stream ) {
    if ( stream->flags & __FILE_NOBUF ) {
        return 0;
    }

    stream->has_ungotten = 0;

    if ( stream->flags & __FILE_BUFINPUT ) {
        stream->buffer_pos = stream->buffer_data_size;
    } else {
        stream->buffer_pos = 0;
    }

    return 0;
}
