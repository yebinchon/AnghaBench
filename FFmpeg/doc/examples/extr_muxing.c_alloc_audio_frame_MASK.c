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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_5__ {int format; int sample_rate; int nb_samples; int /*<<< orphan*/  channel_layout; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static AVFrame *FUNC4(enum AVSampleFormat sample_fmt,
                                  uint64_t channel_layout,
                                  int sample_rate, int nb_samples)
{
    AVFrame *frame = FUNC0();
    int ret;

    if (!frame) {
        FUNC3(stderr, "Error allocating an audio frame\n");
        FUNC2(1);
    }

    frame->format = sample_fmt;
    frame->channel_layout = channel_layout;
    frame->sample_rate = sample_rate;
    frame->nb_samples = nb_samples;

    if (nb_samples) {
        ret = FUNC1(frame, 0);
        if (ret < 0) {
            FUNC3(stderr, "Error allocating an audio buffer\n");
            FUNC2(1);
        }
    }

    return frame;
}