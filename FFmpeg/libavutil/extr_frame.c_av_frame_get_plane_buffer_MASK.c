#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int channels; int nb_extended_buf; TYPE_2__** extended_buf; TYPE_2__** buf; int /*<<< orphan*/ ** extended_data; int /*<<< orphan*/  format; scalar_t__ nb_samples; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_2__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

AVBufferRef *FUNC3(AVFrame *frame, int plane)
{
    uint8_t *data;
    int planes, i;

    if (frame->nb_samples) {
        int channels = frame->channels;
        if (!channels)
            return NULL;
        FUNC0(frame);
        planes = FUNC2(frame->format) ? channels : 1;
    } else
        planes = 4;

    if (plane < 0 || plane >= planes || !frame->extended_data[plane])
        return NULL;
    data = frame->extended_data[plane];

    for (i = 0; i < FUNC1(frame->buf) && frame->buf[i]; i++) {
        AVBufferRef *buf = frame->buf[i];
        if (data >= buf->data && data < buf->data + buf->size)
            return buf;
    }
    for (i = 0; i < frame->nb_extended_buf; i++) {
        AVBufferRef *buf = frame->extended_buf[i];
        if (data >= buf->data && data < buf->data + buf->size)
            return buf;
    }
    return NULL;
}