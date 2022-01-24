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
struct TYPE_3__ {int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(uint8_t ***converted_input_samples,
                                  AVCodecContext *output_codec_context,
                                  int frame_size)
{
    int error;

    /* Allocate as many pointers as there are audio channels.
     * Each pointer will later point to the audio samples of the corresponding
     * channels (although it may be NULL for interleaved formats).
     */
    if (!(*converted_input_samples = FUNC4(output_codec_context->channels,
                                            sizeof(**converted_input_samples)))) {
        FUNC5(stderr, "Could not allocate converted input sample pointers\n");
        return FUNC0(ENOMEM);
    }

    /* Allocate memory for the samples of all channels in one consecutive
     * block for convenience. */
    if ((error = FUNC3(*converted_input_samples, NULL,
                                  output_codec_context->channels,
                                  frame_size,
                                  output_codec_context->sample_fmt, 0)) < 0) {
        FUNC5(stderr,
                "Could not allocate converted input samples (error '%s')\n",
                FUNC1(error));
        FUNC2(&(*converted_input_samples)[0]);
        FUNC6(*converted_input_samples);
        return error;
    }
    return 0;
}