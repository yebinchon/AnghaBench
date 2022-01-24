#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int width; int height; int* linesize; scalar_t__* data; scalar_t__* extended_data; TYPE_4__** buf; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFrame *frame, int align)
{
    const AVPixFmtDescriptor *desc = FUNC8(frame->format);
    int ret, i, padded_height;
    int plane_padding = FUNC2(16 + 16/*STRIDE_ALIGN*/, align);

    if (!desc)
        return FUNC0(EINVAL);

    if ((ret = FUNC5(frame->width, frame->height, 0, NULL)) < 0)
        return ret;

    if (!frame->linesize[0]) {
        if (align <= 0)
            align = 32; /* STRIDE_ALIGN. Should be av_cpu_max_align() */

        for(i=1; i<=align; i+=i) {
            ret = FUNC6(frame->linesize, frame->format,
                                          FUNC1(frame->width, i));
            if (ret < 0)
                return ret;
            if (!(frame->linesize[0] & (align-1)))
                break;
        }

        for (i = 0; i < 4 && frame->linesize[i]; i++)
            frame->linesize[i] = FUNC1(frame->linesize[i], align);
    }

    padded_height = FUNC1(frame->height, 32);
    if ((ret = FUNC7(frame->data, frame->format, padded_height,
                                      NULL, frame->linesize)) < 0)
        return ret;

    frame->buf[0] = FUNC3(ret + 4*plane_padding);
    if (!frame->buf[0]) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC7(frame->data, frame->format, padded_height,
                                      frame->buf[0]->data, frame->linesize)) < 0)
        goto fail;

    for (i = 1; i < 4; i++) {
        if (frame->data[i])
            frame->data[i] += i * plane_padding;
    }

    frame->extended_data = frame->data;

    return 0;
fail:
    FUNC4(frame);
    return ret;
}