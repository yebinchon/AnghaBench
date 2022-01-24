#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int orig_buffer_size; int buffer_size; scalar_t__ write_flag; int /*<<< orphan*/ * buf_ptr_max; int /*<<< orphan*/ * buf_ptr; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(AVIOContext *s, int buf_size)
{
    uint8_t *buffer;
    buffer = FUNC2(buf_size);
    if (!buffer)
        return FUNC0(ENOMEM);

    FUNC1(s->buffer);
    s->buffer = buffer;
    s->orig_buffer_size =
    s->buffer_size = buf_size;
    s->buf_ptr = s->buf_ptr_max = buffer;
    FUNC3(s, s->write_flag ? AVIO_FLAG_WRITE : AVIO_FLAG_READ);
    return 0;
}