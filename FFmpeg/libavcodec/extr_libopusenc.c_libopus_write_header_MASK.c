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
typedef  char uint8_t ;
struct TYPE_3__ {char* extradata; int channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  initial_padding; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(AVCodecContext *avctx, int stream_count,
                                 int coupled_stream_count,
                                 int mapping_family,
                                 const uint8_t *channel_mapping)
{
    uint8_t *p   = avctx->extradata;
    int channels = avctx->channels;

    FUNC0(&p, "OpusHead", 8);
    FUNC1(&p, 1); /* Version */
    FUNC1(&p, channels);
    FUNC2(&p, avctx->initial_padding); /* Lookahead samples at 48kHz */
    FUNC3(&p, avctx->sample_rate); /* Original sample rate */
    FUNC2(&p, 0); /* Gain of 0dB is recommended. */

    /* Channel mapping */
    FUNC1(&p, mapping_family);
    if (mapping_family != 0) {
        FUNC1(&p, stream_count);
        FUNC1(&p, coupled_stream_count);
        FUNC0(&p, channel_mapping, channels);
    }
}