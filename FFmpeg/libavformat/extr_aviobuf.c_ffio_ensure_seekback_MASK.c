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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int64_t ;
struct TYPE_3__ {int max_packet_size; int buffer_size; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * checksum_ptr; int /*<<< orphan*/ * buf_end; int /*<<< orphan*/ * buf_ptr; int /*<<< orphan*/  write_flag; int /*<<< orphan*/  read_packet; scalar_t__ seekable; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int IO_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC5(AVIOContext *s, int64_t buf_size)
{
    uint8_t *buffer;
    int max_buffer_size = s->max_packet_size ?
                          s->max_packet_size : IO_BUFFER_SIZE;
    int filled = s->buf_end - s->buffer;
    ptrdiff_t checksum_ptr_offset = s->checksum_ptr ? s->checksum_ptr - s->buffer : -1;

    buf_size += s->buf_ptr - s->buffer + max_buffer_size;

    if (buf_size < filled || s->seekable || !s->read_packet)
        return 0;
    FUNC1(!s->write_flag);

    buffer = FUNC3(buf_size);
    if (!buffer)
        return FUNC0(ENOMEM);

    FUNC4(buffer, s->buffer, filled);
    FUNC2(s->buffer);
    s->buf_ptr = buffer + (s->buf_ptr - s->buffer);
    s->buf_end = buffer + (s->buf_end - s->buffer);
    s->buffer = buffer;
    s->buffer_size = buf_size;
    if (checksum_ptr_offset >= 0)
        s->checksum_ptr = s->buffer + checksum_ptr_offset;
    return 0;
}