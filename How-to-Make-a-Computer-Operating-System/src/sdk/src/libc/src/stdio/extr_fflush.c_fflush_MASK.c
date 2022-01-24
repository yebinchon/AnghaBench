#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; scalar_t__ buffer_pos; char* buffer; int /*<<< orphan*/  fd; scalar_t__ buffer_data_size; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  _IO_BUFSIZE ; 
 int __FILE_BUFINPUT ; 
 int __FILE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

int FUNC4( FILE* stream ) {
    if ( stream->flags & __FILE_BUFINPUT ) {
        int tmp;

        tmp = ( int )stream->buffer_pos - ( int )stream->buffer_data_size;

        if ( tmp != 0 ) {
            FUNC0( stream->fd, tmp, SEEK_CUR );
        }

        stream->buffer_pos = 0;
        stream->buffer_data_size = 0;
    } else {
        if ( stream->buffer_pos > 0 ) {
            if ( FUNC3( stream->fd, stream->buffer, stream->buffer_pos ) != stream->buffer_pos ) {
				FUNC3(0,"\nerror file \n",FUNC2("\nerror file \n"));
                stream->flags |= __FILE_ERROR;
                return -1;
            }
			FUNC1(stream->buffer,0,_IO_BUFSIZE);
            stream->buffer_pos = 0;
        }
    }

    return 0;
}