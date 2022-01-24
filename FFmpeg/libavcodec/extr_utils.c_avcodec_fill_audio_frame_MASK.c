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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_3__ {int /*<<< orphan*/ * extended_data; int /*<<< orphan*/ * data; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/ * linesize; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int) ; 

int FUNC6(AVFrame *frame, int nb_channels,
                             enum AVSampleFormat sample_fmt, const uint8_t *buf,
                             int buf_size, int align)
{
    int ch, planar, needed_size, ret = 0;

    needed_size = FUNC5(NULL, nb_channels,
                                             frame->nb_samples, sample_fmt,
                                             align);
    if (buf_size < needed_size)
        return FUNC0(EINVAL);

    planar = FUNC3(sample_fmt);
    if (planar && nb_channels > AV_NUM_DATA_POINTERS) {
        if (!(frame->extended_data = FUNC2(nb_channels,
                                                sizeof(*frame->extended_data))))
            return FUNC0(ENOMEM);
    } else {
        frame->extended_data = frame->data;
    }

    if ((ret = FUNC4(frame->extended_data, &frame->linesize[0],
                                      (uint8_t *)(intptr_t)buf, nb_channels, frame->nb_samples,
                                      sample_fmt, align)) < 0) {
        if (frame->extended_data != frame->data)
            FUNC1(&frame->extended_data);
        return ret;
    }
    if (frame->extended_data != frame->data) {
        for (ch = 0; ch < AV_NUM_DATA_POINTERS; ch++)
            frame->data[ch] = frame->extended_data[ch];
    }

    return ret;
}