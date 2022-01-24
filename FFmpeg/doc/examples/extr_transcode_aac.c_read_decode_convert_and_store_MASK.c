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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  nb_samples; scalar_t__ extended_data; } ;
typedef  int /*<<< orphan*/  SwrContext ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVAudioFifo ;

/* Variables and functions */
 int AVERROR_EXIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ***,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__**) ; 

__attribute__((used)) static int FUNC8(AVAudioFifo *fifo,
                                         AVFormatContext *input_format_context,
                                         AVCodecContext *input_codec_context,
                                         AVCodecContext *output_codec_context,
                                         SwrContext *resampler_context,
                                         int *finished)
{
    /* Temporary storage of the input samples of the frame read from the file. */
    AVFrame *input_frame = NULL;
    /* Temporary storage for the converted input samples. */
    uint8_t **converted_input_samples = NULL;
    int data_present = 0;
    int ret = AVERROR_EXIT;

    /* Initialize temporary storage for one input frame. */
    if (FUNC7(&input_frame))
        goto cleanup;
    /* Decode one frame worth of audio samples. */
    if (FUNC4(input_frame, input_format_context,
                           input_codec_context, &data_present, finished))
        goto cleanup;
    /* If we are at the end of the file and there are no more samples
     * in the decoder which are delayed, we are actually finished.
     * This must not be treated as an error. */
    if (*finished) {
        ret = 0;
        goto cleanup;
    }
    /* If there is decoded data, convert and store it. */
    if (data_present) {
        /* Initialize the temporary storage for the converted input samples. */
        if (FUNC6(&converted_input_samples, output_codec_context,
                                   input_frame->nb_samples))
            goto cleanup;

        /* Convert the input samples to the desired output sample format.
         * This requires a temporary storage provided by converted_input_samples. */
        if (FUNC3((const uint8_t**)input_frame->extended_data, converted_input_samples,
                            input_frame->nb_samples, resampler_context))
            goto cleanup;

        /* Add the converted input samples to the FIFO buffer for later processing. */
        if (FUNC0(fifo, converted_input_samples,
                                input_frame->nb_samples))
            goto cleanup;
        ret = 0;
    }
    ret = 0;

cleanup:
    if (converted_input_samples) {
        FUNC2(&converted_input_samples[0]);
        FUNC5(converted_input_samples);
    }
    FUNC1(&input_frame);

    return ret;
}