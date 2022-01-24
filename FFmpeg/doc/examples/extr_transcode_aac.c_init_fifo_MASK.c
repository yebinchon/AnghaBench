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
struct TYPE_3__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_fmt; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVAudioFifo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(AVAudioFifo **fifo, AVCodecContext *output_codec_context)
{
    /* Create the FIFO buffer based on the specified output sample format. */
    if (!(*fifo = FUNC1(output_codec_context->sample_fmt,
                                      output_codec_context->channels, 1))) {
        FUNC2(stderr, "Could not allocate FIFO\n");
        return FUNC0(ENOMEM);
    }
    return 0;
}