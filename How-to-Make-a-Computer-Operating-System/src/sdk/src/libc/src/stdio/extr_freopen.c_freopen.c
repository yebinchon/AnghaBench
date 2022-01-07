
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int flags; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;



 int __FILE_CAN_READ ;
 int __FILE_CAN_WRITE ;
 int __parse_mode (char const*) ;
 int close (int) ;
 int errno ;
 int fflush (TYPE_1__*) ;
 int open (char const*,int,int) ;

FILE* freopen( const char* path, const char* mode, FILE* stream ) {
    int flags;

    if ( stream == ((void*)0) ) {
        errno = -EINVAL;
        return ((void*)0);
    }

    flags = __parse_mode( mode );

    fflush( stream );
    close( stream->fd );

    stream->fd = open( path, flags, 0666 );

    if ( stream->fd != -1 ) {
        stream->flags = 0;

        switch ( flags & 3 ) {
          case 129 : stream->flags |= ( __FILE_CAN_READ | __FILE_CAN_WRITE ); break;
          case 130 : stream->flags |= __FILE_CAN_READ; break;
          case 128 : stream->flags |= __FILE_CAN_WRITE; break;
        }
    }

    return stream;
}
