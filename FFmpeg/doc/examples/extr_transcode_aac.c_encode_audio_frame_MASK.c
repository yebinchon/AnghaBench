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
struct TYPE_4__ {scalar_t__ nb_samples; int /*<<< orphan*/  pts; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pts ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(AVFrame *frame,
                              AVFormatContext *output_format_context,
                              AVCodecContext *output_codec_context,
                              int *data_present)
{
    /* Packet used for temporary storage. */
    AVPacket output_packet;
    int error;
    FUNC7(&output_packet);

    /* Set a timestamp based on the sample rate for the container. */
    if (frame) {
        frame->pts = pts;
        pts += frame->nb_samples;
    }

    /* Send the audio frame stored in the temporary packet to the encoder.
     * The output audio stream encoder is used to do this. */
    error = FUNC5(output_codec_context, frame);
    /* The encoder signals that it has nothing more to encode. */
    if (error == AVERROR_EOF) {
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        FUNC6(stderr, "Could not send packet for encoding (error '%s')\n",
                FUNC1(error));
        return error;
    }

    /* Receive one encoded frame from the encoder. */
    error = FUNC4(output_codec_context, &output_packet);
    /* If the encoder asks for more data to be able to provide an
     * encoded frame, return indicating that no data is present. */
    if (error == FUNC0(EAGAIN)) {
        error = 0;
        goto cleanup;
    /* If the last frame has been encoded, stop encoding. */
    } else if (error == AVERROR_EOF) {
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        FUNC6(stderr, "Could not encode frame (error '%s')\n",
                FUNC1(error));
        goto cleanup;
    /* Default case: Return encoded data. */
    } else {
        *data_present = 1;
    }

    /* Write one audio frame from the temporary packet to the output file. */
    if (*data_present &&
        (error = FUNC3(output_format_context, &output_packet)) < 0) {
        FUNC6(stderr, "Could not write frame (error '%s')\n",
                FUNC1(error));
        goto cleanup;
    }

cleanup:
    FUNC2(&output_packet);
    return error;
}