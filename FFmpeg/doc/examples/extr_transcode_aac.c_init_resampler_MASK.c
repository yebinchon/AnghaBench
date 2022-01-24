#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sample_rate; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channels; } ;
typedef  int /*<<< orphan*/  SwrContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *input_codec_context,
                          AVCodecContext *output_codec_context,
                          SwrContext **resample_context)
{
        int error;

        /*
         * Create a resampler context for the conversion.
         * Set the conversion parameters.
         * Default channel layouts based on the number of channels
         * are assumed for simplicity (they are sometimes not detected
         * properly by the demuxer and/or decoder).
         */
        *resample_context = FUNC4(NULL,
                                              FUNC2(output_codec_context->channels),
                                              output_codec_context->sample_fmt,
                                              output_codec_context->sample_rate,
                                              FUNC2(input_codec_context->channels),
                                              input_codec_context->sample_fmt,
                                              input_codec_context->sample_rate,
                                              0, NULL);
        if (!*resample_context) {
            FUNC3(stderr, "Could not allocate resample context\n");
            return FUNC0(ENOMEM);
        }
        /*
        * Perform a sanity check so that the number of converted samples is
        * not greater than the number of samples to be converted.
        * If the sample rates differ, this case has to be handled differently
        */
        FUNC1(output_codec_context->sample_rate == input_codec_context->sample_rate);

        /* Open the resampler with the specified parameters. */
        if ((error = FUNC6(*resample_context)) < 0) {
            FUNC3(stderr, "Could not open resample context\n");
            FUNC5(resample_context);
            return error;
        }
    return 0;
}