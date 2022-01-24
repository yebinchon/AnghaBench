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
struct TYPE_9__ {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_8__ {int nb_samples; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  format; int /*<<< orphan*/  channel_layout; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXIT ; 
 char* FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(AVFrame **frame,
                             AVCodecContext *output_codec_context,
                             int frame_size)
{
    int error;

    /* Create a new frame to store the audio samples. */
    if (!(*frame = FUNC1())) {
        FUNC4(stderr, "Could not allocate output frame\n");
        return AVERROR_EXIT;
    }

    /* Set the frame's parameters, especially its size and format.
     * av_frame_get_buffer needs this to allocate memory for the
     * audio samples of the frame.
     * Default channel layouts based on the number of channels
     * are assumed for simplicity. */
    (*frame)->nb_samples     = frame_size;
    (*frame)->channel_layout = output_codec_context->channel_layout;
    (*frame)->format         = output_codec_context->sample_fmt;
    (*frame)->sample_rate    = output_codec_context->sample_rate;

    /* Allocate the samples of the created frame. This call will make
     * sure that the audio frame can hold as many samples as specified. */
    if ((error = FUNC3(*frame, 0)) < 0) {
        FUNC4(stderr, "Could not allocate output frame samples (error '%s')\n",
                FUNC0(error));
        FUNC2(frame);
        return error;
    }

    return 0;
}