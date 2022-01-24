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
typedef  int uint32_t ;

/* Variables and functions */
#define  HB_ACODEC_AC3 134 
#define  HB_ACODEC_CA_HAAC 133 
#define  HB_ACODEC_FDK_HAAC 132 
#define  HB_ACODEC_FFEAC3 131 
#define  HB_ACODEC_FFFLAC 130 
#define  HB_ACODEC_FFFLAC24 129 
 int HB_ACODEC_MASK ; 
#define  HB_ACODEC_OPUS 128 
 int HB_ACODEC_PASS_FLAG ; 
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

int FUNC5(uint32_t codec, int samplerate, int mixdown)
{
    if ((codec & HB_ACODEC_PASS_FLAG) || !(codec & HB_ACODEC_MASK))
        goto fail;

    int bitrate, nchannels, nlfe, sr_shift;
    /* full-bandwidth channels, sr_shift */
    nlfe      = FUNC3(mixdown);
    nchannels = FUNC2(mixdown) - nlfe;
    sr_shift  = FUNC1(samplerate);

    switch (codec)
    {
        case HB_ACODEC_FFFLAC:
        case HB_ACODEC_FFFLAC24:
            goto fail;

        // 96, 224, 640 Kbps
        case HB_ACODEC_AC3:
            bitrate = (nchannels * 128) - (32 * (nchannels < 5));
            break;

        // Our E-AC-3 encoder is pretty similar to our AC-3 encoder but it does
        // allow for higher bitrates, should some users want a bit more quality
        // at the expense of compression efficiency - still, let's remain
        // compatible with passthru over S/PDIF by default: 384, 768, 1536 Kbps
        case HB_ACODEC_FFEAC3:
            bitrate = (nchannels * 384) - (128 * (nchannels - 2) * (nchannels > 2));
            break;

        case HB_ACODEC_CA_HAAC:
        case HB_ACODEC_FDK_HAAC:
            bitrate = nchannels * 32;
            break;

        case HB_ACODEC_OPUS:
        {
            int coupled = FUNC4(mixdown);
            int uncoupled = nchannels + nlfe - 2 * coupled;

            bitrate = coupled * 96 + uncoupled * 64;
        } break;

        default:
            bitrate = nchannels * 80;
            break;
    }
    // sample_rate adjustment
    bitrate >>= sr_shift;
    return FUNC0(codec, bitrate, samplerate, mixdown);

fail:
    return -1;
}