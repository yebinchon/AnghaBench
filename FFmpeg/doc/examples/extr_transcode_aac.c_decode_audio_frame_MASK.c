#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
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
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(AVFrame *frame,
                              AVFormatContext *input_format_context,
                              AVCodecContext *input_codec_context,
                              int *data_present, int *finished)
{
    /* Packet used for temporary storage. */
    AVPacket input_packet;
    int error;
    FUNC7(&input_packet);

    /* Read one audio frame from the input file into a temporary packet. */
    if ((error = FUNC3(input_format_context, &input_packet)) < 0) {
        /* If we are at the end of the file, flush the decoder below. */
        if (error == AVERROR_EOF)
            *finished = 1;
        else {
            FUNC6(stderr, "Could not read frame (error '%s')\n",
                    FUNC1(error));
            return error;
        }
    }

    /* Send the audio frame stored in the temporary packet to the decoder.
     * The input audio stream decoder is used to do this. */
    if ((error = FUNC5(input_codec_context, &input_packet)) < 0) {
        FUNC6(stderr, "Could not send packet for decoding (error '%s')\n",
                FUNC1(error));
        return error;
    }

    /* Receive one frame from the decoder. */
    error = FUNC4(input_codec_context, frame);
    /* If the decoder asks for more data to be able to decode a frame,
     * return indicating that no data is present. */
    if (error == FUNC0(EAGAIN)) {
        error = 0;
        goto cleanup;
    /* If the end of the input file is reached, stop decoding. */
    } else if (error == AVERROR_EOF) {
        *finished = 1;
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        FUNC6(stderr, "Could not decode frame (error '%s')\n",
                FUNC1(error));
        goto cleanup;
    /* Default case: Return decoded data. */
    } else {
        *data_present = 1;
        goto cleanup;
    }

cleanup:
    FUNC2(&input_packet);
    return error;
}