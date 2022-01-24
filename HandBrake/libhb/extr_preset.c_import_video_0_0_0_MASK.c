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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 int HB_VCODEC_FFMPEG_MASK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC10(hb_value_t *preset)
{
    hb_value_t *val;

    if ((val = FUNC0(preset, "x264Preset")) != NULL)
         FUNC1(preset, "VideoPreset", FUNC2(val));
    if ((val = FUNC0(preset, "x264Tune")) != NULL)
         FUNC1(preset, "VideoTune", FUNC2(val));
    if ((val = FUNC0(preset, "h264Profile")) != NULL)
         FUNC1(preset, "VideoProfile", FUNC2(val));
    if ((val = FUNC0(preset, "h264Level")) != NULL)
         FUNC1(preset, "VideoLevel", FUNC2(val));
    if ((val = FUNC0(preset, "x264OptionExtra")) != NULL)
        FUNC1(preset, "VideoOptionExtra", FUNC2(val));

    // Remove invalid "none" tune from VideoTune.  Frontends should
    // be removing this before saving a preset.
    if ((val = FUNC0(preset, "VideoTune")) != NULL)
    {
        const char *tune;
        tune = FUNC5(val);
        // "none" is not a valid tune, but is used by HandBrake
        // to indicate no tune options.
        if (tune != NULL && !FUNC9(tune, "none", 4))
        {
            tune += 4;
            if (tune[0] == ',')
            {
                tune++;
            }
        }
        if (tune != NULL)
        {
            FUNC1(preset, "VideoTune", FUNC7(tune));
        }
    }

    if (FUNC4(FUNC0(preset, "VideoQualityType")) == 0)
    {
        // Target size no longer supported
        FUNC1(preset, "VideoQualityType", FUNC6(1));
    }

    if (FUNC3(FUNC0(preset, "VideoFrameratePFR")))
    {
        FUNC1(preset, "VideoFramerateMode", FUNC7("pfr"));
    }
    else if (FUNC3(FUNC0(preset, "VideoFramerateCFR")))
    {
        FUNC1(preset, "VideoFramerateMode", FUNC7("cfr"));
    }
    else if (FUNC3(FUNC0(preset, "VideoFramerateVFR")))
    {
        FUNC1(preset, "VideoFramerateMode", FUNC7("vfr"));
    }

    const char *enc;
    int codec;
    enc = FUNC5(FUNC0(preset, "VideoEncoder"));
    codec = FUNC8(enc);
    if (codec & HB_VCODEC_FFMPEG_MASK)
    {
        if ((val = FUNC0(preset, "lavcOption")) != NULL)
            FUNC1(preset, "VideoOptionExtra", FUNC2(val));
    }
}