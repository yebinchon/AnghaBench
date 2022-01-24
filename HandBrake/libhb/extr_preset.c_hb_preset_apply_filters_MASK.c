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
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int HB_FILTER_CHROMA_SMOOTH ; 
 int HB_FILTER_COMB_DETECT ; 
 int HB_FILTER_DEBLOCK ; 
 int HB_FILTER_DECOMB ; 
 int HB_FILTER_DEINTERLACE ; 
 int HB_FILTER_DETELECINE ; 
 int HB_FILTER_GRAYSCALE ; 
 int HB_FILTER_HQDN3D ; 
 int HB_FILTER_LAPSHARP ; 
 int HB_FILTER_NLMEANS ; 
 int HB_FILTER_PAD ; 
 int HB_FILTER_ROTATE ; 
 int HB_FILTER_UNSHARP ; 
 int HB_FILTER_VFR ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int,char const*,char const*,char const*) ; 
 char* FUNC9 (char*,int,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 char const* FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int) ; 
 int /*<<< orphan*/ * FUNC18 (char*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int*,int*,int*) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 

int FUNC22(const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_value_t * filters_dict, * filter_list, * filter_dict;
    hb_dict_t  * filter_settings;

    int clock_min, clock_max, clock;
    FUNC20(&clock_min, &clock_max, &clock);

    // Create new filters
    filters_dict = FUNC5();
    FUNC6(job_dict, "Filters", filters_dict);
    filter_list = FUNC11();
    FUNC6(filters_dict, "FilterList", filter_list);

    // Detelecine filter
    hb_value_t *detel_val = FUNC3(preset, "PictureDetelecine");
    if (detel_val != NULL)
    {
        const char *custom;
        custom = FUNC15(FUNC3(preset,
                                                "PictureDetelecineCustom"));
        filter_settings = FUNC8(
            HB_FILTER_DETELECINE, FUNC15(detel_val), NULL, custom);

        if (filter_settings == NULL)
        {
            char *s = FUNC16(detel_val);
            FUNC7("Invalid detelecine filter settings (%s)", s);
            FUNC0(s);
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_DETELECINE));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    const char *comb_preset;
    comb_preset = FUNC15(FUNC3(preset,
                                      "PictureCombDetectPreset"));
    if (comb_preset != NULL)
    {
        const char *comb_custom;
        comb_custom = FUNC15(FUNC3(preset,
                                          "PictureCombDetectCustom"));
        filter_settings = FUNC8(HB_FILTER_COMB_DETECT,
                                                comb_preset, NULL, comb_custom);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid comb detect filter preset (%s)", comb_preset);
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_COMB_DETECT));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    // Decomb or deinterlace filters
    const char *deint_filter, *deint_preset, *deint_custom;
    deint_filter = FUNC15(FUNC3(preset,
                                                   "PictureDeinterlaceFilter"));
    deint_preset = FUNC15(FUNC3(preset,
                                                   "PictureDeinterlacePreset"));
    deint_custom = FUNC15(FUNC3(preset,
                                                   "PictureDeinterlaceCustom"));
    if (deint_filter != NULL && deint_preset != NULL &&
        FUNC21(deint_filter, "off"))
    {
        int filter_id;
        if (!FUNC21(deint_filter, "decomb"))
        {
            filter_id = HB_FILTER_DECOMB;
        }
        else if (!FUNC21(deint_filter, "deinterlace"))
        {
            filter_id = HB_FILTER_DEINTERLACE;
        }
        else
        {
            FUNC7("Invalid deinterlace filter (%s)", deint_filter);
            return -1;
        }
        filter_settings = FUNC8(
                        filter_id, deint_preset, NULL, deint_custom);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid deinterlace filter preset (%s)", deint_preset);
            return -1;
        }
        if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(filter_id));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    // Denoise filter
    int denoise;
    hb_value_t *denoise_value = FUNC3(preset, "PictureDenoiseFilter");
    denoise = FUNC19(denoise_value) == HB_VALUE_TYPE_STRING ? (
        !FUNC21(FUNC15(denoise_value), "off") ? 0 :
        !FUNC21(FUNC15(denoise_value), "nlmeans") ? 1 : 2) :
        FUNC14(denoise_value);

    if (denoise != 0)
    {
        int filter_id = denoise == 1 ? HB_FILTER_NLMEANS : HB_FILTER_HQDN3D;
        const char *denoise_preset, *denoise_tune, *denoise_custom;
        denoise_preset = FUNC15(
                            FUNC3(preset, "PictureDenoisePreset"));
        if (denoise_preset != NULL)
        {
            denoise_tune   = FUNC15(
                        FUNC3(preset, "PictureDenoiseTune"));
            denoise_custom = FUNC15(
                        FUNC3(preset, "PictureDenoiseCustom"));

            filter_settings = FUNC8(filter_id,
                                denoise_preset, denoise_tune, denoise_custom);
            if (filter_settings == NULL)
            {
                FUNC7("Invalid denoise filter settings (%s%s%s)",
                         denoise_preset,
                         denoise_tune ? "," : "",
                         denoise_tune ? denoise_tune : "");
                return -1;
            }
            else if (!FUNC4(filter_settings, "disable"))
            {
                filter_dict = FUNC5();
                FUNC6(filter_dict, "ID", FUNC17(filter_id));
                FUNC6(filter_dict, "Settings", filter_settings);
                FUNC2(filter_list, filter_dict);
            }
            else
            {
                FUNC12(&filter_settings);
            }
        }
    }

    // Chroma Smooth filter
    const char *chroma_smooth_preset, *chroma_smooth_tune, *chroma_smooth_custom;
    chroma_smooth_preset = FUNC15(FUNC3(preset,
                                                   "PictureChromaSmoothPreset"));
    chroma_smooth_tune   = FUNC15(FUNC3(preset,
                                                   "PictureChromaSmoothTune"));
    chroma_smooth_custom = FUNC15(FUNC3(preset,
                                                   "PictureChromaSmoothCustom"));
    if (chroma_smooth_preset != NULL &&
        FUNC21(chroma_smooth_preset, "off"))
    {
        int filter_id = HB_FILTER_CHROMA_SMOOTH;
        filter_settings = FUNC8(filter_id,
                            chroma_smooth_preset, chroma_smooth_tune, chroma_smooth_custom);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid chroma smooth filter settings (%s%s%s)",
                     chroma_smooth_preset,
                     chroma_smooth_tune ? "," : "",
                     chroma_smooth_tune ? chroma_smooth_tune : "");
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(filter_id));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    // Sharpen filter
    const char *sharpen_filter, *sharpen_preset, *sharpen_tune, *sharpen_custom;
    sharpen_filter = FUNC15(FUNC3(preset,
                                                   "PictureSharpenFilter"));
    sharpen_preset = FUNC15(FUNC3(preset,
                                                   "PictureSharpenPreset"));
    sharpen_tune   = FUNC15(FUNC3(preset,
                                                   "PictureSharpenTune"));
    sharpen_custom = FUNC15(FUNC3(preset,
                                                   "PictureSharpenCustom"));
    if (sharpen_filter != NULL && sharpen_preset != NULL &&
        FUNC21(sharpen_filter, "off"))
    {
        int filter_id;
        if (!FUNC21(sharpen_filter, "lapsharp"))
        {
            filter_id = HB_FILTER_LAPSHARP;
        }
        else if (!FUNC21(sharpen_filter, "unsharp"))
        {
            filter_id = HB_FILTER_UNSHARP;
        }
        else
        {
            FUNC7("Invalid sharpen filter (%s)", sharpen_filter);
            return -1;
        }
        filter_settings = FUNC8(filter_id,
                            sharpen_preset, sharpen_tune, sharpen_custom);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid sharpen filter settings (%s%s%s)",
                     sharpen_preset,
                     sharpen_tune ? "," : "",
                     sharpen_tune ? sharpen_tune : "");
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(filter_id));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    // Deblock filter
    const char * deblock = FUNC15(
                                FUNC3(preset, "PictureDeblockPreset"));
    if (deblock != NULL)
    {
        const char * deblock_tune   = FUNC15(
                                FUNC3(preset, "PictureDeblockTune"));
        const char * deblock_custom = FUNC15(
                                FUNC3(preset, "PictureDeblockCustom"));
        filter_settings = FUNC8(HB_FILTER_DEBLOCK,
                                    deblock, deblock_tune, deblock_custom);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid deblock filter settings (%s)", deblock);
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_DEBLOCK));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }

    // Rotate filter
    char *rotate = FUNC16(
                        FUNC3(preset, "PictureRotate"));
    if (rotate != NULL)
    {
        filter_settings = FUNC8(HB_FILTER_ROTATE,
                                                      NULL, NULL, rotate);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid rotate filter settings (%s)", rotate);
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_ROTATE));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }
    FUNC0(rotate);

    // Grayscale filter
    if (FUNC13(FUNC3(preset, "VideoGrayScale")))
    {
        filter_dict = FUNC5();
        FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_GRAYSCALE));
        FUNC2(filter_list, filter_dict);
    }

    // Pad filter
    char *pad = FUNC16(FUNC3(preset, "PicturePad"));
    if (pad != NULL)
    {
        filter_settings = FUNC8(HB_FILTER_PAD,
                                                      NULL, NULL, pad);
        if (filter_settings == NULL)
        {
            FUNC7("Invalid pad filter settings (%s)", pad);
            return -1;
        }
        else if (!FUNC4(filter_settings, "disable"))
        {
            filter_dict = FUNC5();
            FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_PAD));
            FUNC6(filter_dict, "Settings", filter_settings);
            FUNC2(filter_list, filter_dict);
        }
        else
        {
            FUNC12(&filter_settings);
        }
    }
    FUNC0(pad);

    hb_value_t *fr_value = FUNC3(preset, "VideoFramerate");
    int vrate_den = FUNC1(fr_value);
    if (vrate_den < 0)
    {
        char *str = FUNC16(fr_value);
        FUNC7("Invalid video framerate (%s)", str);
        FUNC0(str);
        return -1;
    }

    int fr_mode;
    hb_value_t *fr_mode_value = FUNC3(preset, "VideoFramerateMode");
    fr_mode = FUNC19(fr_mode_value) == HB_VALUE_TYPE_STRING ? (
        !FUNC21(FUNC15(fr_mode_value), "cfr") ? 1 :
        !FUNC21(FUNC15(fr_mode_value), "pfr") ? 2 : 0) :
        FUNC14(fr_mode_value);

    filter_settings = FUNC5();
    if (vrate_den == 0)
    {
        FUNC6(filter_settings, "mode", FUNC17(fr_mode));
    }
    else
    {
        char *str = FUNC9("%d/%d", clock, vrate_den);
        FUNC6(filter_settings, "mode", FUNC17(fr_mode));
        FUNC6(filter_settings, "rate", FUNC18(str));
        FUNC0(str);
    }
    if (FUNC10(HB_FILTER_VFR, filter_settings))
    {
        FUNC7("hb_preset_apply_filters: Internal error, invalid VFR");
        FUNC12(&filter_settings);
        return -1;
    }

    filter_dict = FUNC5();
    FUNC6(filter_dict, "ID", FUNC17(HB_FILTER_VFR));
    FUNC6(filter_dict, "Settings", filter_settings);
    FUNC2(filter_list, filter_dict);
    return 0;
}