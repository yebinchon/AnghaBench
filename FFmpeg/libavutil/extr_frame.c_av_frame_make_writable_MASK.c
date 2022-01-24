#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_11__ {scalar_t__ data; scalar_t__ extended_data; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC7(AVFrame *frame)
{
    AVFrame tmp;
    int ret;

    if (!frame->buf[0])
        return FUNC0(EINVAL);

    if (FUNC4(frame))
        return 0;

    FUNC6(&tmp, 0, sizeof(tmp));
    tmp.format         = frame->format;
    tmp.width          = frame->width;
    tmp.height         = frame->height;
    tmp.channels       = frame->channels;
    tmp.channel_layout = frame->channel_layout;
    tmp.nb_samples     = frame->nb_samples;
    ret = FUNC3(&tmp, 32);
    if (ret < 0)
        return ret;

    ret = FUNC1(&tmp, frame);
    if (ret < 0) {
        FUNC5(&tmp);
        return ret;
    }

    ret = FUNC2(&tmp, frame);
    if (ret < 0) {
        FUNC5(&tmp);
        return ret;
    }

    FUNC5(frame);

    *frame = tmp;
    if (tmp.data == tmp.extended_data)
        frame->extended_data = frame->data;

    return 0;
}