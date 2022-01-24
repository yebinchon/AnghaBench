#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channels; scalar_t__ frame_size; } ;
struct TYPE_11__ {scalar_t__ nb_samples; int /*<<< orphan*/  extended_data; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *s, AVFrame **dst, const AVFrame *src)
{
    AVFrame *frame = NULL;
    int ret;

    if (!(frame = FUNC1()))
        return FUNC0(ENOMEM);

    frame->format         = src->format;
    frame->channel_layout = src->channel_layout;
    frame->channels       = src->channels;
    frame->nb_samples     = s->frame_size;
    ret = FUNC4(frame, 32);
    if (ret < 0)
        goto fail;

    ret = FUNC2(frame, src);
    if (ret < 0)
        goto fail;

    if ((ret = FUNC5(frame->extended_data, src->extended_data, 0, 0,
                               src->nb_samples, s->channels, s->sample_fmt)) < 0)
        goto fail;
    if ((ret = FUNC6(frame->extended_data, src->nb_samples,
                                      frame->nb_samples - src->nb_samples,
                                      s->channels, s->sample_fmt)) < 0)
        goto fail;

    *dst = frame;

    return 0;

fail:
    FUNC3(&frame);
    return ret;
}