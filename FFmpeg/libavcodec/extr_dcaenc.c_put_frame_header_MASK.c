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
struct TYPE_3__ {int frame_size; int channel_config; size_t samplerate_index; int bitrate_index; int /*<<< orphan*/  pb; scalar_t__ lfe_channel; } ;
typedef  TYPE_1__ DCAEncContext ;

/* Variables and functions */
 int SUBBAND_SAMPLES ; 
 int* bitstream_sfreq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(DCAEncContext *c)
{
    /* SYNC */
    FUNC0(&c->pb, 16, 0x7ffe);
    FUNC0(&c->pb, 16, 0x8001);

    /* Frame type: normal */
    FUNC0(&c->pb, 1, 1);

    /* Deficit sample count: none */
    FUNC0(&c->pb, 5, 31);

    /* CRC is not present */
    FUNC0(&c->pb, 1, 0);

    /* Number of PCM sample blocks */
    FUNC0(&c->pb, 7, SUBBAND_SAMPLES - 1);

    /* Primary frame byte size */
    FUNC0(&c->pb, 14, c->frame_size - 1);

    /* Audio channel arrangement */
    FUNC0(&c->pb, 6, c->channel_config);

    /* Core audio sampling frequency */
    FUNC0(&c->pb, 4, bitstream_sfreq[c->samplerate_index]);

    /* Transmission bit rate */
    FUNC0(&c->pb, 5, c->bitrate_index);

    /* Embedded down mix: disabled */
    FUNC0(&c->pb, 1, 0);

    /* Embedded dynamic range flag: not present */
    FUNC0(&c->pb, 1, 0);

    /* Embedded time stamp flag: not present */
    FUNC0(&c->pb, 1, 0);

    /* Auxiliary data flag: not present */
    FUNC0(&c->pb, 1, 0);

    /* HDCD source: no */
    FUNC0(&c->pb, 1, 0);

    /* Extension audio ID: N/A */
    FUNC0(&c->pb, 3, 0);

    /* Extended audio data: not present */
    FUNC0(&c->pb, 1, 0);

    /* Audio sync word insertion flag: after each sub-frame */
    FUNC0(&c->pb, 1, 0);

    /* Low frequency effects flag: not present or 64x subsampling */
    FUNC0(&c->pb, 2, c->lfe_channel ? 2 : 0);

    /* Predictor history switch flag: on */
    FUNC0(&c->pb, 1, 1);

    /* No CRC */
    /* Multirate interpolator switch: non-perfect reconstruction */
    FUNC0(&c->pb, 1, 0);

    /* Encoder software revision: 7 */
    FUNC0(&c->pb, 4, 7);

    /* Copy history: 0 */
    FUNC0(&c->pb, 2, 0);

    /* Source PCM resolution: 16 bits, not DTS ES */
    FUNC0(&c->pb, 3, 0);

    /* Front sum/difference coding: no */
    FUNC0(&c->pb, 1, 0);

    /* Surrounds sum/difference coding: no */
    FUNC0(&c->pb, 1, 0);

    /* Dialog normalization: 0 dB */
    FUNC0(&c->pb, 4, 0);
}