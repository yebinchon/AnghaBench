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
struct TYPE_5__ {scalar_t__ format; scalar_t__ width; scalar_t__ height; scalar_t__ nb_samples; scalar_t__ channels; scalar_t__ channel_layout; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 

int FUNC3(AVFrame *frame, int align)
{
    if (frame->format < 0)
        return FUNC0(EINVAL);

    if (frame->width > 0 && frame->height > 0)
        return FUNC2(frame, align);
    else if (frame->nb_samples > 0 && (frame->channel_layout || frame->channels > 0))
        return FUNC1(frame, align);

    return FUNC0(EINVAL);
}