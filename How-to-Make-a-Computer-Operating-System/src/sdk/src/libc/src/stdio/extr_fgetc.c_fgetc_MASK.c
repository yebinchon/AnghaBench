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
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {int flags; int unget_buffer; size_t buffer_pos; size_t buffer_data_size; unsigned char* buffer; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  fd; scalar_t__ has_ungotten; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  __FILE_BUFINPUT ; 
 int __FILE_CAN_READ ; 
 int __FILE_EOF ; 
 int __FILE_ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC4( FILE* stream ) {
    unsigned char c;

    /* Check if we can read from the stream */

    if ( ( ( stream->flags & __FILE_CAN_READ ) == 0 ) ||
         ( FUNC0( stream, __FILE_BUFINPUT ) ) ) {
        stream->flags |= __FILE_ERROR;
        FUNC2("EOF ! \n");
        return EOF;
    }

    /* Check the unget buffer */

    if ( stream->has_ungotten ) {
        stream->has_ungotten = 0;
        FUNC2("un get ! \n");
        return stream->unget_buffer;
    }

    /* Check the end of the file */

    if ( FUNC1( stream ) ) {
		FUNC2("EOF ! \n");
        return EOF;
    }

    /* Fill the buffer if it's empty */

    if ( stream->buffer_pos >= stream->buffer_data_size ) {
        ssize_t length;

        length = FUNC3( stream->fd, stream->buffer, stream->buffer_size );
        if ( length == 0 ) {
            stream->flags |= __FILE_EOF;
            FUNC2("EOF ! \n");
            return EOF;
        } else if ( length < 0 ) {
            stream->flags |= __FILE_ERROR;
            FUNC2("EOF ! \n");
            return EOF;
        }
        stream->buffer_pos = 0;
        stream->buffer_data_size = length;
    }

    /* Get one character from the buffer */

    c = stream->buffer[ stream->buffer_pos ];

    stream->buffer_pos++;

    return c;
}