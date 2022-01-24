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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AV_CH_LAYOUT_5POINT1_BACK ; 
 int AV_CH_LAYOUT_STEREO ; 
 int AV_CH_LAYOUT_STEREO_DOWNMIX ; 
 int AV_CH_LAYOUT_SURROUND ; 
 int /*<<< orphan*/  AV_CODEC_ID_FLAC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(void)
{
    AVCodec *enc = NULL, *dec = NULL;
    AVCodecContext *enc_ctx = NULL, *dec_ctx = NULL;
    uint64_t channel_layouts[] = {AV_CH_LAYOUT_STEREO, AV_CH_LAYOUT_5POINT1_BACK, AV_CH_LAYOUT_SURROUND, AV_CH_LAYOUT_STEREO_DOWNMIX};
    int sample_rates[] = {8000, 44100, 48000, 192000};
    int cl, sr;

    enc = FUNC3(AV_CODEC_ID_FLAC);
    if (!enc) {
        FUNC1(NULL, AV_LOG_ERROR, "Can't find encoder\n");
        return 1;
    }

    dec = FUNC2(AV_CODEC_ID_FLAC);
    if (!dec) {
        FUNC1(NULL, AV_LOG_ERROR, "Can't find decoder\n");
        return 1;
    }

    for (cl = 0; cl < FUNC0(channel_layouts); cl++) {
        for (sr = 0; sr < FUNC0(sample_rates); sr++) {
            if (FUNC7(enc, &enc_ctx, channel_layouts[cl], sample_rates[sr]) != 0)
                return 1;
            if (FUNC6(dec, &dec_ctx, channel_layouts[cl]) != 0)
                return 1;
            if (FUNC8(enc, dec, enc_ctx, dec_ctx) != 0)
                return 1;
            FUNC5(&enc_ctx);
            FUNC4(&dec_ctx);
        }
    }

    return 0;
}