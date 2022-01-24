#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int size; TYPE_1__* buffer; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int flags; int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BUFFER_FLAG_REALLOCATABLE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  av_buffer_default_free ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(AVBufferRef **pbuf, int size)
{
    AVBufferRef *buf = *pbuf;
    uint8_t *tmp;

    if (!buf) {
        /* allocate a new buffer with av_realloc(), so it will be reallocatable
         * later */
        uint8_t *data = FUNC5(NULL, size);
        if (!data)
            return FUNC0(ENOMEM);

        buf = FUNC2(data, size, av_buffer_default_free, NULL, 0);
        if (!buf) {
            FUNC4(&data);
            return FUNC0(ENOMEM);
        }

        buf->buffer->flags |= BUFFER_FLAG_REALLOCATABLE;
        *pbuf = buf;

        return 0;
    } else if (buf->size == size)
        return 0;

    if (!(buf->buffer->flags & BUFFER_FLAG_REALLOCATABLE) ||
        !FUNC3(buf) || buf->data != buf->buffer->data) {
        /* cannot realloc, allocate a new reallocable buffer and copy data */
        AVBufferRef *new = NULL;

        FUNC8(&new, size);
        if (!new)
            return FUNC0(ENOMEM);

        FUNC7(new->data, buf->data, FUNC1(size, buf->size));

        FUNC6(pbuf, &new);
        return 0;
    }

    tmp = FUNC5(buf->buffer->data, size);
    if (!tmp)
        return FUNC0(ENOMEM);

    buf->buffer->data = buf->data = tmp;
    buf->buffer->size = buf->size = size;
    return 0;
}