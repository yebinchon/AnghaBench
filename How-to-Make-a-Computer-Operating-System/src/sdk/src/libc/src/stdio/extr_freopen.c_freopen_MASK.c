#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; int flags; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  O_RDONLY 130 
#define  O_RDWR 129 
#define  O_WRONLY 128 
 int __FILE_CAN_READ ; 
 int __FILE_CAN_WRITE ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*,int,int) ; 

FILE* FUNC4( const char* path, const char* mode, FILE* stream ) {
    int flags;

    if ( stream == NULL ) {
        errno = -EINVAL;
        return NULL;
    }

    flags = FUNC0( mode );

    FUNC2( stream );
    FUNC1( stream->fd );

    stream->fd = FUNC3( path, flags, 0666 );

    if ( stream->fd != -1 ) {
        stream->flags = 0;

        switch ( flags & 3 ) {
          case O_RDWR :   stream->flags |= ( __FILE_CAN_READ | __FILE_CAN_WRITE ); break;
          case O_RDONLY : stream->flags |= __FILE_CAN_READ; break;
          case O_WRONLY : stream->flags |= __FILE_CAN_WRITE; break;
        }
    }

    return stream;
}