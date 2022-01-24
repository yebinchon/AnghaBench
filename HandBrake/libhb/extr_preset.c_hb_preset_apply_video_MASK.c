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
typedef  int /*<<< orphan*/  const hb_value_t ;
struct TYPE_3__ {int muxers; int /*<<< orphan*/  short_name; } ;
typedef  TYPE_1__ hb_encoder_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;

/* Variables and functions */
 int HB_COLR_MAT_BT2020_NCL ; 
 int HB_COLR_MAT_BT709 ; 
 int HB_COLR_MAT_SMPTE170M ; 
 int HB_COLR_PRI_BT2020 ; 
 int HB_COLR_PRI_BT709 ; 
 int HB_COLR_PRI_EBUTECH ; 
 int HB_COLR_PRI_SMPTEC ; 
 int HB_COLR_TRA_BT709 ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_BOOL ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_DOUBLE ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_INT ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int HB_VCODEC_X264_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  const* FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 char* FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC14 (int) ; 
 int /*<<< orphan*/  const* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

int FUNC21(const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_dict_t    *dest_dict, *video_dict, *qsv;
    hb_value_t   *value, *vcodec_value;
    int           mux, vcodec, vqtype, color_matrix_code;
    hb_encoder_t *encoder;

    dest_dict    = FUNC3(job_dict, "Destination");
    mux          = FUNC1(FUNC12(
                                                FUNC3(dest_dict, "Mux")));
    vcodec_value = FUNC3(preset, "VideoEncoder");
    if (FUNC16(vcodec_value) == HB_VALUE_TYPE_STRING)
    {
        vcodec = FUNC19(
                    FUNC12(vcodec_value));
    }
    else
    {
        vcodec = FUNC11(vcodec_value);
    }
    encoder = FUNC18(vcodec);
    if (encoder == NULL)
    {
        char *str = FUNC13(vcodec_value);
        FUNC7("Invalid video encoder (%s)", str);
        FUNC0(str);
        return -1;
    }
    if (!(encoder->muxers & mux))
    {
        FUNC7("Incompatible video encoder (%s) for muxer (%s)",
                  FUNC20(vcodec),
                  FUNC2(mux));
        return -1;
    }

    video_dict = FUNC3(job_dict, "Video");
    FUNC6(video_dict, "Encoder", FUNC15(encoder->short_name));

    color_matrix_code = FUNC11(FUNC3(preset, "VideoColorMatrixCodeOveride"));
    if (color_matrix_code != 0)
    {
        int color_prim, color_transfer, color_matrix;

        switch (color_matrix_code)
        {
            case 4:
                // ITU BT.2020 UHD content
                color_prim      = HB_COLR_PRI_BT2020;
                color_transfer  = HB_COLR_TRA_BT709;
                color_matrix    = HB_COLR_MAT_BT2020_NCL;
                break;
            case 3:
                // ITU BT.709 HD content
                color_prim      = HB_COLR_PRI_BT709;
                color_transfer  = HB_COLR_TRA_BT709;
                color_matrix    = HB_COLR_MAT_BT709;
                break;
            case 2:
                // ITU BT.601 DVD or SD TV content (PAL)
                color_prim      = HB_COLR_PRI_EBUTECH;
                color_transfer  = HB_COLR_TRA_BT709;
                color_matrix    = HB_COLR_MAT_SMPTE170M;
                break;
            case 1:
            default:
                // ITU BT.601 DVD or SD TV content (NTSC)
                color_prim      = HB_COLR_PRI_SMPTEC;
                color_transfer  = HB_COLR_TRA_BT709;
                color_matrix    = HB_COLR_MAT_SMPTE170M;
                break;
        }

        FUNC6(video_dict, "ColorPrimariesOverride",
                    FUNC14(color_prim));
        FUNC6(video_dict, "ColorTransferOverride",
                    FUNC14(color_transfer));
        FUNC6(video_dict, "ColorMatrixOverride",
                    FUNC14(color_matrix));
    }
    FUNC6(video_dict, "Encoder", FUNC8(vcodec_value));

    if ((vcodec & HB_VCODEC_X264_MASK) &&
        FUNC9(FUNC3(preset, "x264UseAdvancedOptions")))
    {
        FUNC6(video_dict, "Options",
                    FUNC8(FUNC3(preset, "x264Option")));
    }
    else
    {
        if ((value = FUNC3(preset, "VideoPreset")) != NULL)
            FUNC6(video_dict, "Preset", FUNC8(value));
        if ((value = FUNC3(preset, "VideoProfile")) != NULL)
            FUNC6(video_dict, "Profile", FUNC8(value));
        if ((value = FUNC3(preset, "VideoLevel")) != NULL)
            FUNC6(video_dict, "Level", FUNC8(value));
        if ((value = FUNC3(preset, "VideoTune")) != NULL)
            FUNC6(video_dict, "Tune", FUNC8(value));
        if ((value = FUNC3(preset, "VideoOptionExtra")) != NULL)
            FUNC6(video_dict, "Options", FUNC8(value));
    }

    vqtype = FUNC11(FUNC3(preset, "VideoQualityType"));
    if (vqtype == 2)        // Constant quality
    {
        FUNC6(video_dict, "Quality",
                    FUNC17(FUNC3(preset, "VideoQualitySlider"),
                                   HB_VALUE_TYPE_DOUBLE));
        FUNC5(video_dict, "Bitrate");
    }
    else if (vqtype == 1)   // ABR
    {
        FUNC6(video_dict, "Bitrate",
                    FUNC17(FUNC3(preset, "VideoAvgBitrate"),
                                   HB_VALUE_TYPE_INT));
        FUNC6(video_dict, "TwoPass",
                    FUNC17(FUNC3(preset, "VideoTwoPass"),
                                   HB_VALUE_TYPE_BOOL));
        FUNC6(video_dict, "Turbo",
                    FUNC17(FUNC3(preset, "VideoTurboTwoPass"),
                                   HB_VALUE_TYPE_BOOL));
        FUNC5(video_dict, "Quality");
    }
    else
    {
        value = FUNC3(preset, "VideoQualitySlider");
        if (value != NULL && FUNC10(value) >= 0)
        {
            FUNC6(video_dict, "Quality",
                        FUNC17(value, HB_VALUE_TYPE_DOUBLE));
            FUNC5(video_dict, "Bitrate");
        }
        else
        {
            FUNC6(video_dict, "Bitrate",
                        FUNC17(FUNC3(preset, "VideoAvgBitrate"),
                                       HB_VALUE_TYPE_INT));
            FUNC6(video_dict, "TwoPass",
                        FUNC17(FUNC3(preset, "VideoTwoPass"),
                                       HB_VALUE_TYPE_BOOL));
            FUNC6(video_dict, "Turbo",
                        FUNC17(FUNC3(preset, "VideoTurboTwoPass"),
                                       HB_VALUE_TYPE_BOOL));
            FUNC5(video_dict, "Quality");
        }
    }
    qsv = FUNC3(video_dict, "QSV");
    if (qsv == NULL)
    {
        qsv = FUNC4();
        FUNC6(video_dict, "QSV", qsv);
    }
    if ((value = FUNC3(preset, "VideoQSVDecode")) != NULL)
    {
        FUNC6(qsv, "Decode",
                    FUNC17(value, HB_VALUE_TYPE_BOOL));
    }
    if ((value = FUNC3(preset, "VideoQSVLowPower")) != NULL)
    {
        FUNC6(qsv, "LowPower",
                    FUNC17(value, HB_VALUE_TYPE_BOOL));
    }
     if ((value = FUNC3(preset, "VideoQSVAsyncDepth")) != NULL)
    {
        FUNC6(qsv, "AsyncDepth",
                    FUNC17(value, HB_VALUE_TYPE_INT));
    }

    return 0;
}