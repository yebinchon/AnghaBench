#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int channels; int format; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channel_layout; void* frame_pool; } ;
struct TYPE_6__ {int nb_samples; int /*<<< orphan*/  extended_data; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channel_layout; } ;
typedef  int /*<<< orphan*/  FFFramePool ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int AV_SAMPLE_FMT_NONE ; 
 int BUFFER_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  av_buffer_allocz ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_1__* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

AVFrame *FUNC7(AVFilterLink *link, int nb_samples)
{
    AVFrame *frame = NULL;
    int channels = link->channels;

    FUNC0(channels == FUNC1(link->channel_layout) || !FUNC1(link->channel_layout));

    if (!link->frame_pool) {
        link->frame_pool = FUNC3(av_buffer_allocz, channels,
                                                    nb_samples, link->format, BUFFER_ALIGN);
        if (!link->frame_pool)
            return NULL;
    } else {
        int pool_channels = 0;
        int pool_nb_samples = 0;
        int pool_align = 0;
        enum AVSampleFormat pool_format = AV_SAMPLE_FMT_NONE;

        if (FUNC5(link->frame_pool,
                                           &pool_channels, &pool_nb_samples,
                                           &pool_format, &pool_align) < 0) {
            return NULL;
        }

        if (pool_channels != channels || pool_nb_samples < nb_samples ||
            pool_format != link->format || pool_align != BUFFER_ALIGN) {

            FUNC6((FFFramePool **)&link->frame_pool);
            link->frame_pool = FUNC3(av_buffer_allocz, channels,
                                                        nb_samples, link->format, BUFFER_ALIGN);
            if (!link->frame_pool)
                return NULL;
        }
    }

    frame = FUNC4(link->frame_pool);
    if (!frame)
        return NULL;

    frame->nb_samples = nb_samples;
    frame->channel_layout = link->channel_layout;
    frame->sample_rate = link->sample_rate;

    FUNC2(frame->extended_data, 0, nb_samples, channels, link->format);

    return frame;
}