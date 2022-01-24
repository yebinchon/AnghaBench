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
typedef  int gint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FALSE ; 
#define  HB_ACODEC_AAC_PASS 146 
#define  HB_ACODEC_AC3 145 
#define  HB_ACODEC_AC3_PASS 144 
#define  HB_ACODEC_CA_AAC 143 
#define  HB_ACODEC_DCA 142 
#define  HB_ACODEC_DCA_HD 141 
#define  HB_ACODEC_DCA_HD_PASS 140 
#define  HB_ACODEC_DCA_PASS 139 
#define  HB_ACODEC_EAC3_PASS 138 
#define  HB_ACODEC_FDK_AAC 137 
#define  HB_ACODEC_FFAAC 136 
#define  HB_ACODEC_FFEAC3 135 
#define  HB_ACODEC_FFFLAC 134 
#define  HB_ACODEC_FFFLAC24 133 
#define  HB_ACODEC_FFTRUEHD 132 
#define  HB_ACODEC_FLAC_PASS 131 
#define  HB_ACODEC_LAME 130 
#define  HB_ACODEC_MP3_PASS 129 
#define  HB_ACODEC_TRUEHD_PASS 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (char const*,char*) ; 
 char* FUNC23 (char*,char*,char**) ; 

void
FUNC24(GhbValue *settings, GhbValue *preset)
{
    // Remove legacy x264Option
    FUNC9(settings, "x264Option");

    // Initialize defaults
    FUNC17(settings, "Initialization");

    // Initialize the ui settings from a preset
    FUNC4(settings, preset);

    // Fix up all the internal settings that are derived from preset values.

    FUNC10(settings, "scale_height", FUNC18(
        FUNC8(settings, "PictureHeight")));

    FUNC10(settings, "scale_width", FUNC18(
        FUNC8(settings, "PictureWidth")));

    int width, height, uses_pic, autoscale;

    width    = FUNC6(settings, "PictureWidth");
    height   = FUNC6(settings, "PictureHeight");
    uses_pic = FUNC6(settings, "UsesPictureSettings");

    autoscale = uses_pic != 1 || (width == 0 && height == 0);
    FUNC11(settings, "autoscale", autoscale);
    FUNC12(settings, "PictureWidthEnable", !autoscale);
    FUNC12(settings, "PictureHeightEnable", !autoscale);

    gint vqtype;

    vqtype = FUNC6(settings, "VideoQualityType");

    // VideoQualityType/0/1/2 - vquality_type_/target/bitrate/constant
    // *note: target is no longer used
    switch (vqtype)
    {
    case 0:
    {
        FUNC11(settings, "vquality_type_bitrate", TRUE);
        FUNC11(settings, "vquality_type_constant", FALSE);
    } break;
    case 1:
    {
        FUNC11(settings, "vquality_type_bitrate", TRUE);
        FUNC11(settings, "vquality_type_constant", FALSE);
    } break;
    case 2:
    {
        FUNC11(settings, "vquality_type_bitrate", FALSE);
        FUNC11(settings, "vquality_type_constant", TRUE);
    } break;
    default:
    {
        FUNC11(settings, "vquality_type_bitrate", FALSE);
        FUNC11(settings, "vquality_type_constant", TRUE);
    } break;
    }

    const gchar *mode = FUNC7(settings, "VideoFramerateMode");
    if (mode != NULL && FUNC22(mode, "cfr") == 0)
    {
        FUNC11(settings, "VideoFramerateCFR", TRUE);
        FUNC11(settings, "VideoFrameratePFR", FALSE);
        FUNC11(settings, "VideoFramerateVFR", FALSE);
    }
    else if (mode != NULL && FUNC22(mode, "pfr") == 0)
    {
        FUNC11(settings, "VideoFramerateCFR", FALSE);
        FUNC11(settings, "VideoFrameratePFR", TRUE);
        FUNC11(settings, "VideoFramerateVFR", FALSE);
    }
    else
    {
        FUNC11(settings, "VideoFramerateCFR", FALSE);
        FUNC11(settings, "VideoFrameratePFR", FALSE);
        FUNC11(settings, "VideoFramerateVFR", TRUE);
    }

    int                 encoder;
    const char         *videoPreset;

    encoder      = FUNC14(settings);
    videoPreset  = FUNC7(settings, "VideoPreset");
    FUNC16(settings, encoder, videoPreset);

    char *videoTune;
    char *tune = NULL;
    char *saveptr;
    char *tok;

    videoTune = FUNC1(FUNC7(settings, "VideoTune"));
    if (videoTune != NULL)
    {
        tok = FUNC23(videoTune, ",./-+", &saveptr);
        FUNC11(settings, "x264FastDecode", FALSE);
        FUNC11(settings, "x264ZeroLatency", FALSE);
        while (tok != NULL)
        {
            if (!FUNC21(tok, "fastdecode"))
            {
                FUNC11(settings, "x264FastDecode", TRUE);
            }
            else if (!FUNC21(tok, "zerolatency"))
            {
                FUNC11(settings, "x264ZeroLatency", TRUE);
            }
            else if (tune == NULL)
            {
                tune = FUNC1(tok);
            }
            else
            {
                FUNC15("Superfluous tunes! %s", tok);
            }
            tok = FUNC23(NULL, ",./-+", &saveptr);
        }
        FUNC0(videoTune);
    }
    if (tune != NULL)
    {
        FUNC13(settings, "VideoTune", tune);
        FUNC0(tune);
    }

    const char *videoProfile;
    videoProfile = FUNC7(settings, "VideoProfile");
    if (videoProfile != NULL)
        FUNC13(settings, "VideoProfile", videoProfile);

    const char *videoLevel;
    videoLevel = FUNC7(settings, "VideoLevel");
    if (videoLevel != NULL)
        FUNC13(settings, "VideoLevel", videoLevel);

    if (FUNC5(settings, "x264OptionExtra") != NULL)
    {
        const char *optionExtra;
        optionExtra = FUNC7(settings, "x264OptionExtra");
        FUNC13(settings, "VideoOptionExtra", optionExtra);
    }

    // Extract copy mask to check box booleans
    GhbValue *copy_mask;
    copy_mask = FUNC5(preset, "AudioCopyMask");
    if (copy_mask != NULL)
    {
        int count = FUNC3(copy_mask);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            GhbValue *val = FUNC2(copy_mask, ii);
            const char *s = FUNC19(val);
            int acodec = FUNC20(s);
            switch (acodec)
            {
                default:
                    break;
                case HB_ACODEC_LAME:
                case HB_ACODEC_MP3_PASS:
                    FUNC11(settings, "AudioAllowMP3Pass", 1);
                    break;
                case HB_ACODEC_CA_AAC:
                case HB_ACODEC_FDK_AAC:
                case HB_ACODEC_FFAAC:
                case HB_ACODEC_AAC_PASS:
                    FUNC11(settings, "AudioAllowAACPass", 1);
                    break;
                case HB_ACODEC_AC3:
                case HB_ACODEC_AC3_PASS:
                    FUNC11(settings, "AudioAllowAC3Pass", 1);
                    break;
                case HB_ACODEC_DCA:
                case HB_ACODEC_DCA_PASS:
                    FUNC11(settings, "AudioAllowDTSPass", 1);
                    break;
                case HB_ACODEC_DCA_HD:
                case HB_ACODEC_DCA_HD_PASS:
                    FUNC11(settings, "AudioAllowDTSHDPass", 1);
                    break;
                case HB_ACODEC_FFEAC3:
                case HB_ACODEC_EAC3_PASS:
                    FUNC11(settings, "AudioAllowEAC3Pass", 1);
                    break;
                case HB_ACODEC_FFFLAC:
                case HB_ACODEC_FFFLAC24:
                case HB_ACODEC_FLAC_PASS:
                    FUNC11(settings, "AudioAllowFLACPass", 1);
                    break;
                case HB_ACODEC_FFTRUEHD:
                case HB_ACODEC_TRUEHD_PASS:
                    FUNC11(settings, "AudioAllowTRUEHDPass", 1);
                    break;
            }
        }
    }
}