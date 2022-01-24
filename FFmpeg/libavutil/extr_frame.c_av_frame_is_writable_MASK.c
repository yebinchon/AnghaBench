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
struct TYPE_3__ {int nb_extended_buf; scalar_t__* extended_buf; scalar_t__* buf; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(AVFrame *frame)
{
    int i, ret = 1;

    /* assume non-refcounted frames are not writable */
    if (!frame->buf[0])
        return 0;

    for (i = 0; i < FUNC0(frame->buf); i++)
        if (frame->buf[i])
            ret &= !!FUNC1(frame->buf[i]);
    for (i = 0; i < frame->nb_extended_buf; i++)
        ret &= !!FUNC1(frame->extended_buf[i]);

    return ret;
}